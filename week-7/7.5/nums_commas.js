// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode

// Read the integer
// convert it into a string, reverse, and store in an array
// created a new empty arrray
// Iterate over the array length using a WHILE loop
// shift and joined 3 elements of the reversed array at a time and pushed into new empty array while size of converted is greater than 0
// join with commas, and reverse the new array
// convert back into a string and return the string

// In javascript we can save the reverse array steps, and instead use the pop and unshift methods

// comma_array.unshift(string_array.splice())

// WHILE string_array length is greater than zero
// for (i=0; i < 3; i ++) use the pop  method and unshift the popped elements into an holding_array
// join the holding_array elements into a single string(??)
// unshift the joined string into the comma_array
// end the while loop

// Initial Solution

function commas(number){
  var comma_array = [];
  var holding_array = [];
  var counter = 0;
  var string_array = number.toString().split("");

  while (string_array.length > 0){
    if (string_array.length > 3) {
      for (counter = 0; counter < 3; counter ++) {
        holding_array.unshift(string_array.pop());
      };
      comma_array.unshift(holding_array.join(""));
    }
      else if (string_array.length % 3 == 2) {
        for (counter = 0; counter < 2; counter++) {
          holding_array.unshift(string_array.pop());
        };
        comma_array.unshift(holding_array.join(""));
      }
        else {
          holding_array.unshift(string_array.pop());
        }
        holding_array = []
      };


  var result = comma_array.join(",")
  console.log(result);

};

commas(75789078944309765)




// Refactored Solution

// REFACTOR PSUEDOCODE
// While the string length is greater than 0
// IF string length > 3
// .reverse.splice(0,3).reverse.join
// ELSE IF length % 3 == 2
// .reverse.splice(0,2).reverse.join
// ELSE
// .reverse.splice(0,1).reverse.join
// END

function commas_numbers(input_number){
  var comma_array = [];
  var string_array = input_number.toString().split("");

 while (string_array.length > 0) {
   if (string_array.length >3) {
     comma_array.unshift((string_array.reverse().splice(0, 3).reverse()).join(""));
     string_array.reverse()
   }
   else if (string_array.length % 3 == 2) {
     comma_array.unshift((string_array.reverse().splice(0, 2).reverse()).join(""));
   }
   else {
     comma_array.unshift((string_array.reverse().splice(0, 1).reverse()).join(""));
   };
 };

   var result = comma_array.join(",")
   console.log(result);
 };




// Your Own Tests (OPTIONAL)
commas(27327693719372)



// // Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// My partner and I realized switched up our initial solution when .splice wouldn't quite work how we first desired it to. We decided to change our approach in the initial solution and use the JavaScript "for" loop to get the desired output.

// What did you learn about iterating over arrays in JavaScript?
//We learned real quick how complicated the syntax can get. Remembering the right placement of {} and semi colons proved difficult for awhile. Also, we had to look up looping in JavaScript, but that was simple enough.

// What was different about solving this problem in JavaScript?
// Like I said above, getting used to JavaScript syntax. Little things like string conversion even threw us off for a period of time. Once we got our code operating appropriately, the problem wasn't too bad.

// What built-in methods did you find to incorporate in your refactored solution?
//We got .splice to work, and then decided to reverse our input once to get the chunks we wanted to join together and then reversed a second time to return the correct looking number.