// SOLO CHALLENGE 7.3 

// PSEUDOCODE

// Function for returning the longest string in an array of strings
// input: array
// steps:
// 	determine the length of each value in the array
// 	iterate over the array to figure out which value has the longest length
// 	return the longest one
// output: string

// Function for checking to see if two objects share at least one key-value pair
// inputs: object, object
// steps: 
	// turn keys into a list (array) of keys
	// see if they have any of the same keys
		// iterate through first object's keys to see if second object's keys are present
	// of the matching keys, see if any values match also
	// if any do, return true
// output: boolean


// FUNCTIONS

function longest(array_of_strings) {
	for (var i = 0; i < (array_of_strings.length - 1); i++) {
		var longest_string = ""
		if (array_of_strings[i].length > array_of_strings[i+1].length) {
			longest_string = array_of_strings[i];
		} else if (array_of_strings[i].length < array_of_strings[i+1].length) {
			longest_string = array_of_strings[i+1];
		}
	}
	console.log(longest_string);
}

function matching(object1, object2) {
	for (var i = 0; i < object1.length; i++) {
		if Object.keys(object1)
	}

}


// DRIVER CODE

// var array = ["long phrase","longest phrase","longer phrase"];
// longest(array);



var person1 = {name: "Steven", age: 54};
var person2 = {name: "Tamir", age: 54};
var person3 = {name: "Pam", age: 5};

matching(person1, person2);

// console.log(Object.keys(person1));

// if (Object.keys(person1) == Object.keys(person2)) {
// 	console.log(person2);
// }

// console.log(Object.keys(person1)[0] == Object.keys(person2)[0]);
// console.log(Object.values(person3))
