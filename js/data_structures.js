// array of colors
var colors = ["red", "blue", "green", "yellow"];

//array of horse names
var names = ["charlie", "ponyta", "rapidash", "mudbray"];

//add color to the colors array
colors.push("orange");

//add horse to the horses array
names.push("mudsdale");

//combine the two arrays of color and horses into one data structure
//create an empty object and pass values inside

var horses = {}

//add key-value pairs by iterating through the two arrays

//horses["charlie"] = "red"; (test case)

//console.log(horses)

for (var i = 0; i < names.length; i++) {
  horses[names[i]] = colors[i];
}

console.log(horses);

//create a function for cars

function Car(make, model, color) {
  this.make = make;
  this.model = model;
  this.color = color;
  this.go = function() {console.log("Vrroom!")};
  this.stop = function() {console.log("Skrt!")};
}

var blueCar = new Car("Toyota", "Celica", "blue");
console.log(blueCar);
blueCar.go();
blueCar.stop();

var redCar = new Car("Honda", "Civic", "red");
var bigCar = new Car("Cadillac", "STS", "black");

console.log(redCar);
console.log(bigCar);
