#include <iostream>
#include <vector>
#include <algorithm>
#include <sstream>

using namespace std;

int sumDigits(int num) {
    int sum = 0;
    while (num > 0) {
        sum += num % 10;
        num /= 10;
    }
    return sum;
}

vector<int> findNumbers(vector<int> arr) {
    vector<int> result;
    copy_if(arr.begin(), arr.end(), back_inserter(result),
                 [](int num) { return sumDigits(num) < 10; });
    return result;
}

int main() {
    cout << "Enter numbers separated by space: ";
    string input;
    getline(cin, input);
    stringstream ss(input);
    vector<int> arr;
    int num;
    while (ss >> num) {
        arr.push_back(num);
    }
    vector<int> result = findNumbers(arr);
    for (int num : result) {
        cout << num << " ";
    }
    cout << endl;
    return 0;
}