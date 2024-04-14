use regex::Regex;

fn main() {
    let str = "101tf11flb10001";
    let pattern = Regex::new(r"10+1").unwrap(); // Шаблон для поиска подстрок "1[0]1"

    for cap in pattern.find_iter(str) {
        println!("{}", cap.as_str());
    }
}