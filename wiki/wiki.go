package main

import (
	"fmt"
	"io/ioutil"
)

// Page - represents the page title and the body contents
type Page struct {
	Title string
	Body  []byte
}

// save takes a Page struct and saves it to a file with the filename set to the page Title
// This is a method named save that takes as its receiver p, a pointer to Page.
// It takes no parameters, and returns a value of type error."
func (p *Page) save() error {
	filename := p.Title + ".txt"
	return ioutil.WriteFile(filename, p.Body, 0600)
}

// The function loadPage constructs the file name from the title parameter, reads the file's contents into a new variable body,
// and returns a pointer to a Page literal constructed with the proper title and body values.
func loadPage(title string) (*Page, error) {
	filename := title + ".txt"
	body, err := ioutil.ReadFile(filename)
	if err != nil {
		return nil, err
	}
	return &Page{Title: title, Body: body}, err
}

func main() {
	p1 := &Page{Title: "TestPage", Body: []byte("This is a test page")}
	p1.save()
	p2, _ := loadPage("TestPage")
	fmt.Println(p2.Body)
}
