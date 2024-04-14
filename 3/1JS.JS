const readline = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
});

function sumDigits(num) {
    let sum = 0;
    while (num) {
        sum += num % 10;
        num = Math.floor(num / 10);
    }
    return sum;
}

function findNumbers(arr) {
    return arr.filter(num => sumDigits(num) < 10);
}

readline.question('Enter numbers separated by space: ', numbers => {
  const arr = numbers.split(' ').map(Number);
  console.log(findNumbers(arr));
  readline.close();
});