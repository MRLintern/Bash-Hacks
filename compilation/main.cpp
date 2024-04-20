// adds 2 integers

#include "add.h"
#include <iostream>

int main() {

	// user provide 2 integers

	int x;
	int y;

	std::cout<<"Enter an integer: "; std::cin>>x;
	std::cout<<"\n";
	std::cout<<"Enter another integer: "; std::cin>>y;
	std::cout<<"\n";

	// call function to add 2 ints

	std::cout<<"The sum of "<<x<<" and "<<y<<" is "<<add(x,y)<<"\n";

}

// add function

int add(int x, int y) {

	return x + y;
}
