#include <stdio.h>
#include <t1.h>
#include <t2.h>

int main(int argc, char *argv[])
{
	printf("hello world\n");

	func1();
	func2();
	func3();
	func4();
	func5();
	func8();

	printf("add= %d\n",add(1,2));
	printf("sub= %d\n",sub(100,20));
	return 0;
}
