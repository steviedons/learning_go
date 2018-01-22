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
	// contact   contactInfo
	// This can also setup as
	contactInfo
	// and means the same as contactInfo contactInfo
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
		contactInfo: contactInfo{
			email:    "trixiedons@gmail.com",
			postcode: "GU73EE",
		},
	}
	// another way, create the person with every value set to zero values
	var jack person

	// fmt.Println(steve, tracy)

	jack.firstName = "Jack"
	jack.lastName = "Donovan"
	jack.age = 8

	// fmt.Println(jack)
	// steve.updateName("steviedons")
	//steve.print()
	// need to use a pointer here to make sure steve is changed

	// stevePointer := &steve

	// Turn address into a value with *address
	// Turn value into an address with &value

	steve.updateName("Steve")

	steve.print()

	tracy.print()
	jack.print()
}

// This code needs to be changed as it does not update the original object as its sent as a new object, need to
// change it to use pointers

// * infront of types means we are working with a pointer to person
func (pointerToPerson *person) updateName(newFirstName string) {
	// * infront of the variable is to get to the actual contents of the pointer
	(*pointerToPerson).firstName = newFirstName
}

func (p person) print() {
	// To print out the struct in a different way that will include the field names
	fmt.Printf("%+v\n", p)
}
