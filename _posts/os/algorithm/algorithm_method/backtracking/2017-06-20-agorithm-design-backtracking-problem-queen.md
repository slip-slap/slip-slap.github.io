---
layout: post
title: "A.D.: Queen Problem"
keywords: []
description: ""
category: "Algorithm"
tags: ["A.D."]
---
{% include JB/setup %}


```cpp
#include <iostream>

bool  is_move_reasonable(int board[4][4], int row, int column)
{
	// check row
	for(int i=0;i<4;i++) { if(board[row][i]==1) { return false;} }
	// check column
	for(int i=0;i<4;i++) { if(board[i][column]==1) { return false;} }

	// left up
    int left_up_row = row-1;
    int left_up_column = column-1;
	while(left_up_row>=0&&left_up_column>=0)
	{
		if(board[left_up_row][left_up_column]==1) { return false;}
		left_up_row--;
		left_up_column--;
	}

	// left down
    int left_down_row = row+1;
    int left_down_column = column-1;
	while(left_down_row<4&&left_down_column>=0)
	{
		if(board[left_down_row][left_down_column]==1) { return false;}
		left_down_row++;
		left_down_column--;
	}

	// right down
    int right_down_row= row+1;
    int right_down_column = column+1;

	while(right_down_row<4&&right_down_column<4)
	{
		if(board[right_down_row][right_down_column]==1) { return false;}
		right_down_row++;
		right_down_column++;
	}

	//right up
    int right_up_row= row-1;
    int right_up_column = column+1;
	while(right_up_row>=0&&right_up_column<4)
	{
		if(board[right_up_row][right_up_column]==1) { return false;}
		right_up_row--;
		right_up_column++;
	}
	return true;
}

void print_board(int board[4][4])
{
	for(int i=0;i<4;i++)
	{
		for(int k=0;k<4;k++)
		{
			std::cout<<board[i][k]<<" ";
		}
		std::cout<<std::endl;
	}
}

bool queen_problem(int board[4][4], int row)
{
	if(row > 3)
	{
		print_board(board);
		std::cout<<"*******"<<std::endl;
		return true;}

	for(int i=0; i<4;i++)
	{
		if(is_move_reasonable(board,row,i))
		{
			board[row][i] = 1;
			queen_problem(board,row+1);
			board[row][i] = 0;
		}
	}
	return false;
}

void initialize_board(int board[4][4])
{
	for(int i=0;i<4;i++)
	{
		for(int k=0;k<4;k++)
		{
			board[i][k] = 0;
		}
	}
}

int main()
{
	int board_4_4_size[4][4] ;
	initialize_board(board_4_4_size);
	queen_problem(board_4_4_size,0);
}
```


