#include <string>
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

extern "C" __attribute__((visibility("default"))) __attribute__((used))
string
bootle_encrypt(string input, bool encoding)
{
    if (encoding)
    {
        return encrypt(input);
    }
    else
    {
        return decrypt(input);
    }
}
