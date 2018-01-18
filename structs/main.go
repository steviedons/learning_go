package main

import "fmt"

type contactInfo struct {
	email    string
	postcode string
}

type person struct {
	firstName string
	lastName  string
	age       int
	contact   contactInfo
	// Added these to myself not sure the date of birth is correct
	// dob time.Time
}

func main() {
	// one format to create a struct
	steve := person{"Stephen", "Donovan", 41, contactInfo{"steviedons@gmail.com", "GU73EE"}}
	// another way that makes it clear what values go where and is not affected by the order of the person struct
	// being changed
	tracy := person{
		firstName: "Tracy",
		lastName:  "Donovan",
		age:       39,
		contact: contactInfo{
			email:    "trixiedons@gmail.com",
			postcode: "GU73EE",
		},
	}
	// another way, create the person with every value set to zero values
	var jack person

	fmt.Println(steve, tracy)

	// To print out the struct in a different way that will include the field names
	fmt.Printf("%+v\n", jack)

	jack.firstName = "Jack"
	jack.lastName = "Donovan"
	jack.age = 8

	fmt.Println(jack)
}
