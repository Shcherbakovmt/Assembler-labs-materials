//#include <stdio.h>
int a = 50;
int b = 100;
unsigned int uint_1 = 150;
unsigned int uint_2 = 200;
unsigned int u_comp = 0;
unsigned int u_div = 0;
int summ = 0;
int diff = 0;
int composition = 0;
float division = 0;

int main(void)
{
	unsigned int temp = uint_1 * uint_2;
	u_comp = uint_1 * uint_2 * uint_2;
	u_div = uint_2 / uint_1;

	summ = a + b;
	diff = a - b;
	composition = a * b;
	division = a/b;
}

