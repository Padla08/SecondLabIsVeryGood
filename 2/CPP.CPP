#include <iostream>
#include <string>
#include <map>

using namespace std;

int romanToInt(std::string s) {
    map<char, int> romanValues = {
        {'I', 1},
        {'V', 5},
        {'X', 10},
        {'L', 50},
        {'C', 100},
        {'D', 500},
        {'M', 1000},
		{'i', 1},
        {'v', 5},
        {'x', 10},
        {'l', 50},
        {'c', 100},
        {'d', 500},
        {'m', 1000}
    };

    int result = 0;
    int prevValue = 0;

    for (int i = s.length() - 1; i >= 0; --i) {
        int currentValue = romanValues[s[i]];
        if (currentValue < prevValue) {
            result -= currentValue;
        } else {
            result += currentValue;
        }
        prevValue = currentValue;
    }

    return result;
}

int main() {
    string romanNumber;
    cout << "Enter a Roman numeral: ";
    cin >> romanNumber;

    int arabicNumber = romanToInt(romanNumber);
    cout << "The equivalent Arabic numeral is: " << arabicNumber << endl;

    return 0;
}