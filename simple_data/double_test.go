package main

import (
	"testing"
)

// examples and tests
func TestDouble(t *testing.T) {
	if double(2) != 4 {
		t.Errorf("Expected a value of 4, but got: %v", double(2))
	}
	if double(4.2) != 8.4 {
		t.Errorf("Expected a value of 8, but got: %v", double(4.2))
	}
}
