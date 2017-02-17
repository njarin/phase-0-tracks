// SOLO CHALLENGE 7.3 

// PSEUDOCODE

// Function for returning the longest string in an array of strings
// input: array
// steps:
// 	determine the length of each value in the array
// 	iterate over the array to figure out which value has the longest length
// 	return the longest one
// output: string

function longest(array_of_strings) {
	console.log(array_of_strings.length)
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

var array = ["long phrase","longest phrase","longer phrase"];
longest(array);