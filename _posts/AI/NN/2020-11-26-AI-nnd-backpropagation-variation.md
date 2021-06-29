---
layout: post
title: "N.N.D.: Variations on Backpropagation"
keywords: [] 
description: 
category: "AI"
tags: ["N.N.D."]
---
{% include JB/setup %}

#### Background
1. backpropagation algorithm is slow in converging

#### Alternative
1. conjugate gradient algorithm 
2. Newton's Method


#### Simple Backpropagation
```cpp
#include <iostream>
#include <vector>
#include <cmath>


float linear_function(float input, float para, float bias){
	return input*para + bias;
}

float linear_function_derivative_para(float input){
	return input;
}

float linear_function_derivative_bias(){
	return 1;
}

float sigmoid_active_function(float input){
	return 1 / ( std::exp(-input ) + 1 );
}

float sigmoid_derivative(float x){
	return sigmoid_active_function(x ) * (1 - sigmoid_active_function(x));
}

float square_derivative(float x, float output){
	// f(x) = (x - constant)^2
	return 2 * (x - output);	
}

float evaluate_neural_network(float input, float para, float bias){
	return sigmoid_active_function(linear_function(input, para, bias));
}

std::tuple<float, float> calculate_gradient(float para, float bias){
	float actual_input[3] = {-1, 0, 1};
	float actual_output[3] = {0.00033, 0.5, 0.9999665};
	float gradient_weight = 0;
	float gradient_bias = 0;
	for(int i=0; i< 3; i++){
		float prediction = evaluate_neural_network(actual_input[i], para, bias);
		float gradient1 = square_derivative(prediction, actual_output[i]); 

		float linear_output = linear_function(actual_input[i], para, bias);
		float gradient2 = sigmoid_derivative(linear_output);

		float gradient3_weight = linear_function_derivative_para(actual_input[i]);
		float gradient3_bias  = linear_function_derivative_bias();

		gradient_weight = gradient_weight + gradient1 * gradient2 * gradient3_weight;
		gradient_bias = gradient_bias + gradient1 * gradient2 * gradient3_bias;
	}
	return std::make_tuple(gradient_weight/3, gradient_bias/3);
}

void train_neural_network(){
	float para = -3;
	float bias = 9;
	float learning_rate = 1;

	for(int i=0; i< 100000; i++){
		std::tuple<float, float> gradient = calculate_gradient(para, bias);
		para = para - learning_rate * std::get<0>(gradient);
		bias = bias - learning_rate * std::get<1>(gradient);
		//float prediction1 = evaluate_neural_network(-1,para, bias);
		//float prediction2 = evaluate_neural_network(0,para, bias);
		//float prediction3 = evaluate_neural_network(1,para, bias);
		//std::cout<<"prediction: 1 "<< prediction1<<std::endl;
		//std::cout<<"prediction: 0 "<< prediction2<<std::endl;
		//std::cout<<"prediction: -1 "<< prediction3<<std::endl;
		std::cout<<	"weight: "<<para<<" bias: "<<bias<<std::endl;
	}
}

```
