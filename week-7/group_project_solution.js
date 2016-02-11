// Initial solution

// Sum

var sum = function(array) {
  var total = 0;
  for (var i = 0; i < array.length; i++) {
        total += array[i];
  }
  return total;
}
// var array = [1,2,3,4,5]
// console.log(sum(array));

// Mean

var mean = function(array) {
  var total = 0;
  for (var i = 0; i < array.length; i++) {
        total += array[i];
  }
  return total/array.length;
}

// Median

function median(numbers) {
  numbers.sort( function(a,b) {return a - b;} );
    var half = Math.floor(numbers.length/2);
      if(numbers.length % 2)
        return numbers[half];
      else
        return (numbers[half-1] + numbers[half]) / 2.0;
}
// var array = [2,4,5,1,6,7,3,9,0];
// median(array);








