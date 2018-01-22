package main

import "fmt"

func main() {

	// var colors map[string]string // if do not assign any values this is an empty map

	colors := make(map[string]string)

	colors["white"] = "ffffff"

	// colors := map[string]string{
	// 	"red":   "#ff0000",
	// 	"blue":  "#0000ff",
	// 	"green": "#00ff00",
	// }

	// delete(colors, "white")
	fmt.Println(colors)
}
