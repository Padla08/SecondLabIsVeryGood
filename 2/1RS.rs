use std::collections::HashMap;

fn roman_to_int(s: String) -> i32 {
    let mut roman_values: HashMap<char, i32> = HashMap::new();
    roman_values.insert('I', 1);
    roman_values.insert('V', 5);
    roman_values.insert('X', 10);
    roman_values.insert('L', 50);
    roman_values.insert('C', 100);
    roman_values.insert('D', 500);
    roman_values.insert('M', 1000);
	roman_values.insert('i', 1);
    roman_values.insert('v', 5);
    roman_values.insert('x', 10);
    roman_values.insert('l', 50);
    roman_values.insert('c', 100);
    roman_values.insert('d', 500);
    roman_values.insert('m', 1000);

    let mut result = 0;
    let mut prev_value = 0;

    for c in s.chars().rev() {
        let current_value = roman_values[&c];
        if current_value < prev_value {
            result -= current_value;
        } else {
            result += current_value;
        }
        prev_value = current_value;
    }

    result
}

fn main() {
    println!("Enter a Roman numeral:");
    let mut roman_number = String::new();
    std::io::stdin().read_line(&mut roman_number).unwrap();
    let roman_number = roman_number.trim().to_string();

    let ar