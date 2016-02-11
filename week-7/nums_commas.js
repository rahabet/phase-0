// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Philip Barnett.

// Pseudocode
 // Input: integer
 // Output: a comma-separated integer as a string.
 // steps: convert the integer into string
 //        convert the string into an array
 //        reverse the array
 //        Insert comma every third character
 //        Reverse again and join everything together




// Initial Solution
   function separateComma(num){
    var number = String(num);
    if (number.length < 4)
      return number;
    else
    var array = number.split("");
    var new_array = array.reverse();
     for(var counter =3; counter < new_array.length ; counter+=4){
      new_array.splice(counter,0,",")
    };
     var output=new_array.reverse().join("");
     console.log(output);
     return output;
   }

   separateComma(1345645634)


// Refactored Solution

   function separateComma(num){
    var number = String(num);
    if (number.length >= 4){
     var array = number.split("").reverse();
     for(var counter =3; counter < array.length ; counter+=4){
      array.splice(counter,0,",")
    };
     var output= array.reverse().join("");
   };
     console.log(output);
     return output;
   }

   separateComma(1345645634)


// Your Own Tests (OPTIONAL)

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (typeof separateComma(23456) === 'string'),
  "The value of separateComma should be a number.",
  "1. "
)



// Reflection

/*

 1) What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

  It was not difficult to approach this challenge since we already have the idea how it is going to look. the main concern we had was whether to use for or while to iterate but we agreed to use 'for'

 2)What did you learn about iterating over arrays in JavaScript?

  It is the same as ruby except we only are able to use while or for and since we had experience using those ways, it was not confusing.

 3)What was different about solving this problem in JavaScript?

  The main difference is syntax, but the concept is the same.

 4)What built-in methods did you find to incorporate in your refactored solution?

  we used .reverse , .join , .split and .splice .from all, .splice is new for us and it is very helpful.

*/