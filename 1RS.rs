use regex::Regex;

fn main() {
    let str = "101001f0110a1";
    let pattern = Regex::new(r"10+{1,3}1").unwrap();
    let pattern2 = Regex::new(r"10+{2,3}1").unwrap();

    for cap in pattern.captures_iter(str) {
        println!("{}", cap[0]);
    }

    for cap in pattern2.captures_iter(str) {
        println!("{}", cap[0]);
    }
}