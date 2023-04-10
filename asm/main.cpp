#include <iostream>

extern "C" int sum(int a, int b);
extern "C" int lab1(int a);
extern "C" bool lab2(bool a, bool b, bool c, bool d);
extern "C" uint32_t lab3(uint32_t a);
extern "C" int lab4(int a, int b, int c, int d);
extern "C" int lab5(int a, int b, int c, int d);
extern "C" int lab6(int n, int div);
extern "C" bool lab7(int n, int k);
extern "C" int lab8(int n, int* arr);
extern "C" int lab9();

int main() {


	// std::cout << "lab 1: " << lab1(1) << std::endl;
	
	// std::cout << "lab 2: " << lab2(true, true, true, true) << std::endl;
	
	// std::cout << "lab 3: " << lab3(11) << std::endl;
	
	// std::cout << "lab 4: " << lab4(1, 2, 3, 4) << std::endl;
	
	// std::cout << "lab 5: " << lab5(0, 4, 1, 2) << std::endl;
	
	// std::cout << "lab 6: " << lab6(2, 9) << std::endl;
	
	// std::cout << "lab 7: " << lab7(111, 3) << std::endl;

	 int arr[] = { 3,5,45,15 };
	 std::cout << "lab 8: " << lab8(4, arr) << std::endl;

	// std::cout << "lab 9: " << lab9() << std::endl;

}