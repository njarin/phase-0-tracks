// Module 7.1 Syntax

// Write a function that will reverse a word
// Pseudocode 
// 	Accept a word (string) as a parameter
// 	Break that word down into characters
// 	Create a new word with the characters from the old one starting from the end
// 	Use indexes to take each letter from take from the end (strings have a #length in JS)

// var string = "hello";

function reverse(string) {
	var reversedWord = "";
	for (var i = (string.length - 1); i >= 0; i-=1) {
		reversedWord = (reversedWord + string[i]);
		reversedWord;
	}
	console.log(reversedWord);
}

(reverse("hello"))


// Print the reversedWord given that some condition is true
// console.log(reversedWord);
// if (1 <= 100) {
// 	console.log(string);
// 	console.log(reversedWord);
// }
