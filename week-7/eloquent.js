// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

      var str = "Hello", word = "world"
      console.log(str + " "  + word)
//Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!"

> console.log("what is your favorite food?");
[Log] what is your favorite food?
< undefined
> var food = prompt("Enter your favorite food : ");
< undefined
> console.log("Hey!".concat(food," is my favorite food too !! "));
[Log] Hey!, pizza is my favorite food too !!

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
//Looping a Triangle
   var rowColumn = '';
   for (var i = 0; i < 7; i++) {
      rowColumn = rowColumn + '#';
      console.log(rowColumn);
}

// Functions

// Complete the `minimum` exercise.

var min = function(num1, num2)
  {
    if (num1 < num2)
      return num1
    else
      return num2
  }

console.log(min(9, 7));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = [
{name: "Beth"},
{age: 57},
{favFoods: ["pizza", "cheesecake", "fries"]},
{quirk: "I am a super woman"},
];
console.log(me);

