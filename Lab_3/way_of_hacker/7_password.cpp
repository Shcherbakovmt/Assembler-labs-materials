#include <iostream>
using namespace std;

int main()
{
	string S = "Ekvxzsdlrl!vkszhjww1!sxixukrrx!rhrijpj0%mkpmybvlsst\"rj%iwpes!wqhjsuwesekqk";
	string ans = "";
	int counter = 0;
	for(char i : S)
	{
		counter += 1;
		if(counter > 5)
		{
			counter = 1;
		}
		

		i -= counter;
		ans += i;
	}
	cout << ans << endl;


}

