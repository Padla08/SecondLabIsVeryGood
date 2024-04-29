let str = "101001f0110a1";
let pattern = /10+{1,3}1/g;
let pattern2 = /10+{2,3}1/g;

let matches = str.match(pattern);
matches.forEach(match => console.log(match));

let matches2 = str.match(pattern2);
matches2.forEach(match => console.log(match));