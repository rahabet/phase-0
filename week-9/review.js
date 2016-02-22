/* # Pseudocode

   1. create GroceryList
   2. create GroceryItems
   3. Items has a name, quantity
   4. functions to add an item, to delete an item, and to view list
*/

//  Initial Solution


function GroceryItems(name, quantity) {
  this.name = name,
  this.quantity = quantity
};

var groceryList = [];

var apple = new GroceryItems("apple(s)", 5);
var banana = new GroceryItems("banana(s)", 3);
var cheese = new GroceryItems("cheese(s)", 6);
var beer = new GroceryItems("beer(s)", 12);

var addItem = function(item) {
    groceryList.push(item)
};

var deleteItem = function(item) {

    while (groceryList.indexOf(item) !== -1) {
      groceryList.splice(groceryList.indexOf(item), 1);
    };
};

var viewList = function(){
  console.log("Here is a list of your items:")

  for (var i = 0; i < groceryList.length; i++) {
      console.log(groceryList[i].quantity, groceryList[i].name);
    };
};


addItem(apple);
addItem(banana);
addItem(cheese);
addItem(beer);


viewList();
deleteItem(apple);
console.log("------------------");
viewList();

// Reflection

/*
1)What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
    I got a clear idea now how to work with objects, functions and constructors. I definitely got help from a friend through this challenge but I think now I have got it better.
2)What was the most difficult part of this challenge?
    It was challenging to think this challenge using JavaScript since I did it in ruby. but I manged to put the thoughts into new way of approaching it.
3)Did an array or object make more sense to use and why?
    I used array and it seems the right one to use to me.
*/
