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

// Function for generating random data 
// input: integer
// steps: 
	// Declare an empty array to fill
	// For the same number of times as the input integer...
	// 	generate a random string of characters with a random length between 1 and 10
	// 		need a way to generate a random number 1-10
	//	 	select a random letter from a string of the whole alphabet
	// 		add letters together into an empty string
	// 	add string to the array
	// return the array of strings
// output: array of strings with an array length of the input integer


// FUNCTIONS

function longest(arrayOfStrings) {
	for (var i = 0; i < (arrayOfStrings.length - 1); i++) {
		var longestString = ""
		if (arrayOfStrings[i].length > arrayOfStrings[i+1].length) {
			longestString = arrayOfStrings[i];
		} else if (arrayOfStrings[i].length < arrayOfStrings[i+1].length) {
			longestString = arrayOfStrings[i+1];
		}
	}
	console.log(longestString);
}

function matching(object1, object2) {
	var match = false;
	var object1Keys = Object.keys(object1);
	var object2Keys = Object.keys(object2);
	var object1Values = Object.values(object1);
	var object2Values = Object.values(object2);
	// console.log(object1Keys);
	for (var i = 0; i < object1Keys.length; i++) {
		if (object1Keys[i] == object2Keys[i]) {
			// console.log(object1Keys[i]);
			for (var a = 0; a < object1Keys.length; a++) {
				if (object1Values[i] == object2Values[a]) {
					match = true;
				}
			}
		}
		match;
	}
	console.log(match);
}

function randomArray(listLength) {
	var array = [];
	var alphabet = "abcdefghijklmnopqrstuvwxyz";
	for (var i = 0; i < listLength; i++) {
		var randomString = "";
		var stringLength = Math.floor((Math.random() * 10) + 1);
		for (var a = 0; a < stringLength; a++) {
			randomString += alphabet[Math.floor((Math.random() * 25) + 1)];
			randomString;
		}
		array.push(randomString);
	}
	console.log(array);
}



// DRIVER CODE

// var testArray = ["long phrase","longest phrase","longer phrase"];
// longest(testArray);


// var person1 = {name: "Steven", age: 54};
// var person2 = {name: "Tamir", age: 54};
// var person3 = {name: "Pam", age: 5};

// matching(person1, person2);
// matching(person1, person3);

randomArray(10);




