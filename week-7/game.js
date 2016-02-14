// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: To guess a number
// Goals: To guess the number that the host has in mind.
// Characters: The characters are the player and the host.
// Objects: These are the same as the characters; player and host
// Functions: getSecret, guessSecret, testEquality

// Pseudocode

// Host has a randome number between 1 and 3.
// Player enters/guesses a number and that is returned in a variable.
// if the two numbers match, player wins.


// Initial Code

var host = {
  secretNumber : 0,
    getSecret : function (start, end) {
       this.secretNumber = Math.floor(Math.random()*end + start);
    return this.secretNumber;
  }
};

var player = {
  guess : 0,
    guessSecret : function (){
    this.guess = prompt("What number am I thinking?", "1 to 3");
    return this.guess;
  }
} ;

function testEquality () {
    var playerNumber = player.guessSecret();
    var hostNumber =  host.getSecret(1,3);
    if ( playerNumber == hostNumber ){
      console.log("Good job! You guessed the number correctly.");
    } else {
      console.log("Sorry, you didn't guess correctly.");
    }
    console.log("Thank you for playing");
}

testEquality();

// Refactored Code

var host = {
  secretNumber : 0,
    getSecret : function (start, end) {
       this.secretNumber = Math.floor(Math.random()*end + start);
    return this.secretNumber;
  }
};

var player = {
  guess : 0,
    guessSecret : function (){
    this.guess = prompt("What number am I thinking?", "1 to 3");
    return this.guess;
  }
} ;

function testEquality () {
    var playerNumber = player.guessSecret();
    var hostNumber =  host.getSecret(1,3);
    if ( playerNumber == hostNumber ){
      console.log("Good job! You guessed the number correctly.");
    } else {
      console.log("Sorry, you didn't guess correctly.");
    }
    console.log("Thank you for playing");
}

testEquality();

// Reflection

/*
1)What was the most difficult part of this challenge?
    coming with the idea of what and how to design an actual game that someone would play.
  the properties of those objects.
2)What did you learn about creating objects and functions that interact with one another?
    It is great to work with objects and functions. It makes the code neat and organized.
3)Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
    No the initial solution is the same as the refactored one but I learned  how to generate random numbers in a range.
4)How can you access and manipulate properties of objects?
    I used the dot notation method for this challenge.
*/