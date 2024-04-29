#include <iostream>
#include <regex> // Regular Expressions - позволяет делать шаблон для поиска.
#include <string>

using namespace std;

int main() {
    string str = "101001f0110a1";
    regex pattern("10+{1,3}1"); 
    regex pattern2("10+{2,3}1");

    sregex_iterator begin(str.begin(), str.end(), pattern);
    sregex_iterator end;

    while (begin != end) {
        smatch match = *begin;
        cout << match.str() << endl;
        ++begin;
    }
   sregex_iterator begin2(str.begin(), str.end(), pattern2);
    sregex_iterator end2;

    while (begin2 != end2) {
        smatch match = *begin2;
        cout << match.str() << endl;
        ++begin2;
    }

    return 0;
}