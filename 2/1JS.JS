function romanToInt(s) {
    const romanValues = {
        'I': 1,
        'V': 5,
        'X': 10,
        'L': 50,
        'C': 100,
        'D': 500,
        'M': 1000
		'i': 1,
        'v': 5,
        'x': 10,
        'l': 50,
        'c': 100,
        'd': 500,
        'm': 1000
    };

    let result = 0;
    let prevValue = 0;

    for (let i = s.length - 1; i >= 0; --i) {
        let currentValue = romanValues[s[i]];
        if (currentValue < prevValue) {
            result -= currentValue;
        } else {
            result += currentValue;
        }
        prevValue = currentValue;
    }

    return result;
}

let romanNumber = prompt("Enter a Roman numeral:");
let arabicNumber = romanToInt(romanNumber);
console.log("The equivalent Arabic numeral is: " + arabicNumber);