def roman_to_int(s):
    roman_values = {
        'I': 1,
        'V': 5,
        'X': 10,
        'L': 50,
        'C': 100,
        'D': 500,
        'M': 1000,
        'i': 1,
        'v': 5,
        'x': 10,
        'l': 50,
        'c': 100,
        'd': 500,
        'm': 1000
    }

    result = 0
    prev_value = 0

    for i in range(len(s) - 1, -1, -1):
        current_value = roman_values[s[i]]
        if current_value < prev_value:
            result -= current_value
        else:
            result += current_value
        prev_value = current_value

    return result

roman_number = input("Enter a Roman numeral: ")
arabic_number = roman_to_int(roman_number)
print("The equivalent Arabic numeral is:", arabic_number)