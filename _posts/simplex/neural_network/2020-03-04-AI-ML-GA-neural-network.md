---
layout: post
title: "neural network with genetic algorithm"
keywords: []
description: 
category: "Simplex"
tags: []
---
{% include JB/setup %}

#### Feature Selection with Genetic Algorithm
From customer segmentation to medical diagnosis, arise from complex relationship between features.



#### Train Neural Network with Genetic Algorithm

```python
# prepare data
x = np.arange(-10,10,0.5)
y = np.arange(-10,10,0.5)
z = np.arange(-10,10,0.5)
train_x = np.zeros((64000,4))
index = 0
for i in range(40):
    for j in range(40):
        for k in range(40):
            train_x[index,:]=[x[i],y[j],z[k],0]
            index = index + 1  
target = list(map(lambda i:np.sin(i[0]+i[1]+i[2]),train_x))
for i in range(len(target)):
    train_x[i,3] = target[i]


# create the network with tensorflow
input_x = tf.placeholder(shape=[None,3],dtype=tf.float32,name="input_x")
input_y = tf.placeholder(shape=[None,1],dtype=tf.float32,name="input_y")
# this placeholder is for inject weights
hidden_inject_weights = tf.placeholder(shape=[3,4],dtype=tf.float32,name="hidden_inject_weights")
hidden_inject_biases = tf.placeholder(shape=[4],dtype=tf.float32,name="hidden_inject_biases")
output_inject_weights = tf.placeholder(shape=[4,1],dtype=tf.float32,name="output_inject_weights")
output_inject_biases = tf.placeholder(shape=[1],dtype=tf.float32,name="output_inject_biases")

with tf.variable_scope(name_or_scope="hidden",reuse=tf.AUTO_REUSE):
        w1 = tf.get_variable(name="weights",shape=[3,4],initializer=tf.contrib.layers.xavier_initializer())
        b1 = tf.get_variable(name="bias",shape=[4],initializer=tf.constant_initializer(0.0))
        x1 = tf.matmul(input_x,w1,name="matmul")
        x1 = tf.nn.bias_add(x1,b1,name="bias_add")
        x1 = tf.nn.sigmoid(x1,name="activation")
        
        assign_w1 = tf.assign(w1,hidden_inject_weights)
        assign_b1 = tf.assign(b1,hidden_inject_biases)
        
with tf.variable_scope(name_or_scope="output",reuse=tf.AUTO_REUSE):
        w2 = tf.get_variable(name="weights",shape=[4,1],initializer=tf.contrib.layers.xavier_initializer())
        b2 = tf.get_variable(name="bias",shape=[1],initializer=tf.constant_initializer(0.0))
        x2 = tf.matmul(x1,w2,name="matmul")
        x2 = tf.nn.bias_add(x2,b2,name="bias_add")
        y_ = tf.nn.sigmoid(x2,name="activation")
        
        assign_w2 = tf.assign(w2,output_inject_weights)
        assign_b2 = tf.assign(b2,output_inject_biases)

loss = tf.reduce_sum(tf.square(input_y-y_))
init = tf.global_variables_initializer()
optimizer = tf.train.GradientDescentOptimizer(0.01)
train = optimizer.minimize(loss)

# define genetic algorithm
# genetic algorithm
def select_mating_pool(pop, fitness, num_parents):
    # Selecting the best individuals in the current generation as parents for producing the offspring of the next generation.
    parents = np.empty((num_parents, pop.shape[1]))
    for parent_num in range(num_parents):
        # return data type is tuple
        max_fitness_idx = np.where(fitness == np.max(fitness))
        max_fitness_idx = max_fitness_idx[0][0]
        parents[parent_num, :] = pop[max_fitness_idx, :]
        fitness[max_fitness_idx] = -99999999999
    return parents

def crossover(parents, offspring_size):
    offspring = np.empty(offspring_size)
    # The point at which crossover takes place between two parents. Usually, it is at the center.
    crossover_point = np.uint8(offspring_size[1]/2)

    for k in range(offspring_size[0]):
        # Index of the first parent to mate.
        parent1_idx = k%parents.shape[0]
        # Index of the second parent to mate.
        parent2_idx = (k+1)%parents.shape[0]
        # The new offspring will have its first half of its genes taken from the first parent.
        offspring[k, 0:crossover_point] = parents[parent1_idx, 0:crossover_point]
        # The new offspring will have its second half of its genes taken from the second parent.
        offspring[k, crossover_point:] = parents[parent2_idx, crossover_point:]
    return offspring
def mutation(offspring_crossover):
    for idx in range(offspring_crossover.shape[0]):
        # The random value to be added to the gene.
        weight_max = 2
        weight_min = -2
        mutation_constant = 0.8
        for i in range(offspring_crossover.shape[1]):
            pos = np.random.randint(0,100,1)%20                                    
            if np.random.randint(0,4,1)%2 == 0:
                offspring_crossover[idx,pos]=offspring_crossover[idx,pos]+mutation_constant*(weight_max-offspring_crossover[idx,pos])*np.random.random()
            else:
                offspring_crossover[idx,pos]=offspring_crossover[idx,pos]-mutation_constant*(offspring_crossover[idx,pos]-weight_min)*np.random.random()
    return offspring_crossover
def get_individual_fitness(individual):
    """
    call the neural network to calculate the fitness
    """
    nn_weights = chrome2nn_weights(individual)
    # assign the weights to neural network
    sess.run([assign_w1,assign_b1,assign_w2,assign_b2],
         feed_dict={hidden_inject_weights:nn_weights[0],hidden_inject_biases:nn_weights[1],
                    output_inject_weights:nn_weights[2],output_inject_biases:nn_weights[3]
                   }
        )
    # use the train data to get the fitness which is the loss of the neural network
    data_x = train_x[0:1000][:,0:3]
    data_y = train_x[0:1000][:,3].reshape(1000,1)
    global loss
    fitness = sess.run(loss,feed_dict={input_x:data_x,input_y:data_y})
    return 1/fitness
def get_population_fitness(population):
    fitness = []
    for i in range(population.shape[0]):
        individual_fitness = get_individual_fitness(population[i,:])
        fitness.append(individual_fitness)
    return fitness
def nn_weights2chrome(nn_weights):
    chrome = np.zeros(21)
    chrome[0:20] = np.vstack((nn_weights[0],nn_weights[1],nn_weights[2].reshape(4))).reshape(20)
    chrome[20] = nn_weights[3][0]
    return chrome
def chrome2nn_weights(chrome):
    nn_weights = []
    nn_weights.append(chrome[0:12].reshape(3,4))
    nn_weights.append(chrome[12:16].reshape(4))
    nn_weights.append(chrome[16:20].reshape(4,1))
    nn_weights.append(chrome[20].reshape(1))
    return nn_weights

# begin learning
BEST_OUTPUTS = []
pop_size = (50,21)
#parent_population = np.random.random(pop_size)
parent_population = []
for i in range(pop_size[0]):
    sess = tf.Session()
    sess.run(init)
    weights = sess.run(tf.get_collection(tf.GraphKeys.TRAINABLE_VARIABLES))
    sess.close()
    chrome = nn_weights2chrome(weights)
    parent_population.append(chrome)
parent_population = np.array(parent_population)

ELITIST_PERCENT = 0.1
POPULATION = 50
CHROME_LENGHT = 21
# create a session
sess = tf.Session()
sess.run(init)

for i in range(1000):
    fitness = get_population_fitness(parent_population)
    BEST_OUTPUTS.append(max(fitness))
    parents = select_mating_pool(parent_population, fitness,
                                      int(ELITIST_PERCENT*POPULATION))
    offspring_crossover = crossover(parents,
                                       offspring_size=(pop_size[0]-parents.shape[0], CHROME_LENGHT))
    offspring_mutation = mutation(offspring_crossover)
    parent_population[0:parents.shape[0], :] = parents
    parent_population[parents.shape[0]:, :] = offspring_mutation

matplotlib.pyplot.plot(BEST_OUTPUTS)
matplotlib.pyplot.xlabel("Number of Generations")
matplotlib.pyplot.ylabel("Fitness")
matplotlib.pyplot.title("Genetic Algorithm and Neural Network")

```


#### Reference
1. [Genetic Algorithm for Feature Selection](https://www.neuraldesigner.com/blog/genetic_algorithms_for_feature_selection)
