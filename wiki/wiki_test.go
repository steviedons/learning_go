package main

import (
	"os"
	"reflect"
	"testing"
)

func TestLoadPage(t *testing.T) {

	os.Remove("_pagetesting.txt")

	p1 := &Page{Title: "_pagetesting", Body: []byte("This is a test page")}
	p1.save()
	p2, _ := loadPage("_pagetesting")

	if p1.Title != p2.Title {
		t.Errorf("Expected title of _pagetesting, but got: %v", p2.Title)
	}
	if !reflect.DeepEqual(p1.Body, p2.Body) {
		t.Errorf("Body of loaded Body does not match")
	}

	// cleanup the file
	os.Remove("_pagetesting.txt")
}
