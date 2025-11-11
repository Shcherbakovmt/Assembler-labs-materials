#include <iostream>
using namespace std;

int main()
{
	string S = "Cvso!uif!mboe!boe!cpjm!uif!tfb!.!zpv!dbo(u!ublf!uif!tlz!gspn!nf";
	string ans = "";
	for(char i : S)
	{
		i -= 1;
		ans += i;
	}
	cout << ans;


}

