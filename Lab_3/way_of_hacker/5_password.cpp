#include <iostream>
using namespace std;

int main()
{
	string S = "Kv)u\"uq\"gpqtoqwun{\"htkijvgpkpi\"yjgp\"qwt\"vckn\"tgcejgu\"uwrgtjgcv";
	string ans = "";
	for(char i : S)
	{
		i -= 2;
		ans += i;
	}
	cout << ans;


}

