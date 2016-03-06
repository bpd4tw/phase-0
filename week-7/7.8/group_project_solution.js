//Release 1 : User Story - Brian Donahue
//(Writing from the perspective of a potential user of these javascript functions)
//As a user, I have two different arrays that need to be molded. The first array has an odd length of indices. The numbers inside the array are 1,2,3,4,5,5,7. The other array has an even number indices. The numbers are 4,4,5,5,6,6,6,7. I simply want to call JavaScript functions on these two arrays to receive specific outputs.
//The first function I want to use will sum all the values within the odd length array to have a value of 27. Using the sum function on the even array should produce an ouput 43.
//Next, I want to find the mean of each array. If I call mean and use the odd length array as my argument, the result should return 3.857142857142857. Calling mean on the even length array should return 5.375.
//Lastly, I'll want to be able to call on a median function.  If I use the median function on the odd length array, it should return 4. Using the median function on the even length array should return 5.5.
//...So, that's it! Simply put, I want to interact with two different arrays using three functions (sum, mean, median).

//Release 2
// Psudocode:  Both of the data structures need to made with the numbers required from the user.

// One data structure will house all odd numbers, one will hold all even numbers.

// We will need to calculate the data in these functions in three different ways: sum, mean and median

// Input: the input into the function will be one of the arrays
// Output: the values from the arrays will produce a mathematical answer in the form of sum, mean and median

// Steps: Make the data structures

// Make functions that accept an array as an argument

// Use built in javascript methods to form these calculations

// print out calculations to the user in a fancy style.

//Release 3 : Initial Code

//sum function
function sum(array){
  var total = 0;
  for (var i = 0; i < array.length; i++){
    total += array[i];
  }
  console.log(total);
};

var oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
var evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]

sum(oddLengthArray)
sum(evenLengthArray)

//mean function
function mean(array){
  var total = 0
  for (var i=0; i < array.length; i++){
    total += array[i];
  }
  var mean = total/array.length;
  console.log(mean);
}

var oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
var evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]

mean(oddLengthArray)
mean(evenLengthArray)

//median function
function median(array) {
    var sorted = array.sort( function(a,b) {return a - b;} );
    var middle = Math.floor(sorted.length/2);

    if(array.length % 2){
      console.log(array[middle]);
    }
    else{
      console.log((array[middle-1] + array[middle]) / 2.0);
    }
};


var oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
var evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]

median(oddLengthArray)
median(evenLengthArray)
