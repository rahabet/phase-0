// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Miqueas Hernandez
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// 1. Create a function that iterates over the votes object and pushes vote count tally into voteCount object
//   a. Include a nested loop that will iterate over each object property in order to pass tests
// 2. Create a second function that iterates over voteCount nested objects and finds the max numbers of votes for each object property and returns those names
// 3. (winnning) names are assigned to officers object properties

// __________________________________________
// Initial Solution
// voteCount
for (var person in votes){
for (var i in votes[person]){
    var a =votes[person][i]
    if(voteCount[i][a]===undefined){
        voteCount[i][a]=0
    }
    voteCount[i][a]+=1;
  }
}
// winner
// president
var pres = [];
for (var votes in voteCount['president']){
//   console.log(voteCount['president'][votes]);
  pres.push(voteCount['president'][votes])

}
var winner = Math.max.apply(null, pres);


for (var votes in voteCount['president']){
    // console.log(voteCount['president'][votes])
    if(voteCount['president'][votes] === winner){
        officers['president'] = votes
    }
}

// VP
var vice = [];
for (var votes in voteCount['vicePresident']){
//   console.log(voteCount['vicePresident'][votes]);
  pres.push(voteCount['vicePresident'][votes])

}
var viceWin = Math.max.apply(null, pres);


for (var votes in voteCount['vicePresident']){
    // console.log(voteCount['vicePresident'][votes])
    if(voteCount['vicePresident'][votes] === viceWin){
        officers['vicePresident'] = votes
    }
}

// secretary
var sec = [];
for (var votes in voteCount['secretary']){
//   console.log(voteCount['secretary'][votes]);
  pres.push(voteCount['secretary'][votes])

}
var secWin = Math.max.apply(null, pres);


for (var votes in voteCount['secretary']){
    // console.log(voteCount['secretary'][votes])
    if(voteCount['secretary'][votes] === secWin){
        officers['secretary'] = votes
    }
}

// secretary
var tre = [];
for (var votes in voteCount['treasurer']){
//   console.log(voteCount['treasurer'][votes]);
  pres.push(voteCount['treasurer'][votes])

}
var treWin = Math.max.apply(null, pres);


for (var votes in voteCount['treasurer']){
    // console.log(voteCount['treasurer'][votes])
    if(voteCount['treasurer'][votes] === treWin){
        officers['treasurer'] = votes
    }
}



// __________________________________________
// Refactored Solution

// voteCount
for (var person in votes){
for (var i in votes[person]){
    var a =votes[person][i]
    if(voteCount[i][a]===undefined){
        voteCount[i][a]=0
    }
    voteCount[i][a]+=1;
  }
}
// winner
for (var votes in voteCount){
    var winner = 0;
    for (var person in voteCount[votes]){
      if (voteCount[votes][person] > winner){
        winner = voteCount[votes][person];
        officers[votes] = person;
      }
    }
  }


// __________________________________________
// Reflection
/*

1)What did you learn about iterating over nested objects in JavaScript?
  It is a very challenging exercise and am not sure if I fully understand it but since my partner was good we were able to get most of it.
2)Were you able to find useful methods to help you with this?
  Not really but while searching, I saw how .apply() works along with Math.max.apply() to get the maximum of an array in javascript.
3)What concepts were solidified in the process of working through this challenge?
  I think nothing. I gothered that I don't know most of the things about javascript.

*/






// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)