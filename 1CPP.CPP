#include <iostream>
#include <regex> // Regular Expressions - позволяет делать шаблон для поиска.
#include <string>

using namespace std;

int main() {
    string str = "101tf11flb10001";
    regex pattern("10+1"); // Шаблон для поиска подстрок "1[0]1"

    sregex_iterator begin(str.begin(), str.end(), pattern);
    sregex_iterator end;

    while (begin != end) {
        smatch match = *begin;
        cout << match.str() << endl;
        ++begin;
    }

    return 0;
}