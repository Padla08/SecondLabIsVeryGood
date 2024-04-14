use std::io;

fn sum_digits(num: i32) -> i32 {
    let mut sum = 0;
    let mut n = num;
    while n > 0 {
        sum += n % 10;
        n /= 10;
    }
    sum
}

fn find_numbers(arr: Vec<i32>) -> Vec<i32> {
    arr.into_iter().filter(|&x| sum_digits(x) < 10).collect()
}

fn main() {
    println!("Enter numbers separated by space:");
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Failed to read line");
    let arr: Vec<i32> = input.split_whitespace().map(|x| x.parse().unwrap()).collect();
    println!("{:?}", find_numbers(arr));
}