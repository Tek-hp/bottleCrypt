#include <iostream>

using namespace std;

string crypt(string str, bool bencrypt)
{
    string res = "";
    int shift = 3;
    if (bencrypt == true)
        shift = -3;
    int len = str.length();
    int index = 0;
    while (index < len)
    {
        int ch_ascii = int(str[index]);
        res += (char)(ch_ascii + shift);
        index++;
    }
    return res;
}

string encrypt(string str)
{
    return crypt(str, false);
}

string decrypt(string str)
{
    return crypt(str, true);
}

int main()
{
    string input;
    cin >> input;
    string res = encrypt(input);
    cout << res << endl;
    cout << decrypt(res) << endl;
    return 0;
}