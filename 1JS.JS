let str = "101tf11flb10001";
let pattern = /10+1/g; // Шаблон для поиска подстрок "1[0]1"

let match;
while ((match = pattern.exec(str)) !== null) {
    console.log(match[0]);
}