// A simple C program to show function pointers as parameter 
#include <stdio.h> 
  
// // Two simple functions 
// void fun1() { printf("Fun1\n"); } 
// void fun2() { printf("Fun2\n"); } 
  
// // A function that receives a simple function 
// // as parameter and calls the function 
// void wrapper(void (*fun)()) 
// { 
//     fun(); 
// } 
  
// int main() 
// { 
//     wrapper(fun1); 
//     wrapper(fun2); 
//     return 0; 
// }

typedef struct {
  int num;
  void *nums;
  int size;
} Mystruct;

Mystruct* Create_And_Fill_Details(){
	Mystruct* m1 = malloc(sizeof(Mystruct));
	m1->num = 6;
	m1->nums = malloc(m1->num*sizeof(m1->size));
	m1->size = 23;
	return m1;
}

int main(){
	Mystruct* m1 = Create_And_Fill_Details();
	printf("%d : %d : %x", m1->num, m1->size, m1->nums);
	return 0;
}