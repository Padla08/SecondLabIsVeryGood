package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func sumDigits(num int) int {
	sum := 0
	for num > 0 {
		sum += num % 10
		num /= 10
	}
	return sum
}

func findNumbers(arr []int) []int {
	var result []int
	for _, num := range arr {
		if sumDigits(num) < 10 {
			result = append(result, num)
		}
	}
	return result
}

func main() {
	reader := bufio.NewReader(os.Stdin)
	fmt.Print("Enter numbers separated by space: ")
	input, _ := reader.ReadString('\n')
	input = strings.TrimSpace(input)
	numbers := strings.Split(input, " ")
	var arr []int
	for _, number := range numbers {
		num, _ := strconv.Atoi(number)
		arr = append(arr, num)
	}
	fmt.Println(findNumbers(arr))
}