package main

import (
	"fmt"
	"regexp"
)

func main() {
	str := "101001f0110a1"
	pattern, _ := regexp.Compile("10+{1,3}1")
	pattern2, _ := regexp.Compile("10+{2,3}1")

	matches := pattern.FindAllString(str, -1)
	for _, match := range matches {
		fmt.Println(match)
	}

	matches2 := pattern2.FindAllString(str, -1)
	for _, match := range matches2 {
		fmt.Println(match)
	}
}