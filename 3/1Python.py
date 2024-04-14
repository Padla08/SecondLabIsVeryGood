def sum_digits(num):
    return sum(int(digit) for digit in str(num))

def find_numbers(arr):
    return [num for num in arr if sum_digits(num) < 10]

input_numbers = input("Enter numbers separated by space: ")
arr = list(map(int, input_numbers.split()))
print(find_numbers(arr))