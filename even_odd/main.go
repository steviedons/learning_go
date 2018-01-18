package main

import "fmt"

func newIntList(size int) []int {
	intlist := []int{}

	for i := 0; i <= size; i++ {
		intlist = append(intlist, i)
	}

	return intlist
}

func main() {
	intlist := newIntList(100)

	for _, number := range intlist {
		if number%2 == 0 {
			fmt.Printf("%v is even\n", number)
		} else {
			fmt.Printf("%v is odd\n", number)
		}
	}
}
