package main

import (
	"fmt"
)

// number -> number - in go if you want to use floats this has to be a float to start with
// produce 2 times the given number

//
// func double(n float32) float32 {
// 	return n
// }

func double(n float32) float32 {
	return 2 * n
}

func main() {
	fmt.Println("Double 5.3 is", double(5.3))
}
