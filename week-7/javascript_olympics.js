 // JavaScript Olympics

// I paired with Patrick Skelly on this challenge.

// This challenge took me [#] hours.


// Warm Up

// Bulk Up

  var athlet1 = {
    name : "Sarah",
    event: "basketball",
};
  var athlet2 = {
    name : "Hugh",
    event: "football",
};
  var athletArray = [athlet1,athlet2];
    var athlet_list = function(win){
      for(var i = 0 ; i < athletArray.length; i++){
        console.log(athletArray[i].name + " won the " + athletArray[i].event + " event.")
  }
};
athlet_list(athletArray);


// Jumble your words

  var rev = function(string) {
     return string.split('').reverse().join('');
  };
console.log(rev("Hello"));


// 2,4,6,8

var even = [];
var evenFunction = function(array) {
  for(var i = 0; i < array.length; i++){
    if (array[i] % 2 === 0) {
      even.push(array[i]);
    }
  }
  return even;
};

evenFunction([1,2,3,4,5,6,7]);
console.log(even);

// "We built this city"

function Athlete(name, age, sport, quote){
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection

/*
1)What JavaScript knowledge did you solidify in this challenge?
    I have learned how to access and print a property for each object
    I have learned the use of funcions declaration and function expression.
2)What are constructor functions?
    Constructor functions seem to build out the properties of an object.In a way they are similar to function declaration and are created like
            function myObject(){

            };
3)How are constructors different from Ruby classes (in your research)?
   the constructor points to itself using the key word (this.) but in Ruby we have to initialize a method.
*/