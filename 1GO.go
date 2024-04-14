package main

import (
	"fmt"
	"regexp"
)

func main() {
	str := "101tf11flb10001"
	pattern := regexp.MustCompile(`10+1`) // Шаблон для поиска подстрок "1[0]1"

	matches := pattern.FindAllString(str, -1)
	for _, match := range matches {
		fmt.Println(match)
	}
}