// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:Jackie Feminella
// This challenge took me [3] hours.

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
// create a countVotes function
//use for...in for votes object. set equal to ballot
//use another for...in for position in ballot
//set equal to nominee
//create if/else
//if voteCount position .hasOwnProperty of nominee
//increase voteCount[position][nominee] by 1
//else set equal to 1
//Next, create a new function for the winner
//use for...in on position in voteCount
//set vaiable score equal to the value of position in voteCount
//also create variable for base number equal to 0
//Use for...in on the created variable score
//use if statement
//if value of score name is greater than base variable, set base to theat value of score name
//create variable winner equal to name
//Get ot of for loop and if statement, set each index of officers equal to winner

// __________________________________________
// Initial Solution

// var countVotes = function(){
//   for (var voter in votes){
//     var ballot = votes[voter];
//     for (var position in ballot){
//       var nominee = ballot[position]
//       if (voteCount[position].hasOwnProperty(nominee)){
//         voteCount[position][nominee]+=1;
//       }
//       else {
//         voteCount[position][nominee] = 1
//       }
//     }
//   }
// }

// countVotes()

// console.log(voteCount)


// var declareWinner = function(){
//   for (var position in voteCount){
//     var score = voteCount[position];
//     var base = 0
//     var winner

//     for (var name in score){
//       if (score[name] > base){
//         base = score[name];
//         winner = name;
//       }
//     }
//     officers[position] = winner;
//   }
// }

// declareWinner()
// console.log(officers)

// __________________________________________
// Refactored Solution

var countVotes = function(){
  for (var voter in votes){
    var ballot = votes[voter];
    for (var position in ballot){
      var nominee = ballot[position]
      if (voteCount[position].hasOwnProperty(nominee)){
        voteCount[position][nominee]++;
      }
      else {
        voteCount[position][nominee] = 1
      }
    }
  }
};

countVotes()
console.log(voteCount)


var declareWinner = function(){
  for (var position in voteCount){
    var tally = voteCount[position];
    var base = 0

    for (var name in tally){
      if (tally[name] > base){
        base = tally[name];
        var winner = name;
      }
    }
    officers[position] = winner;
  }
};

declareWinner()
console.log(officers)

// __________________________________________
// Reflection

//What did you learn about iterating over nested objects in JavaScript?
//I learned how to utilize for...in to continually iterate over nested arrays. It was great practice
//to use the result from for...in and set it equal to a local variable that I then iteratred over again.

//Were you able to find useful methods to help you with this?
//Other than the for...in, .hasOwnProperty was essential in our solution
//It was a shorthand check for seeing if our values matched up. Then my partner and I could
//implement an if/else statement.

//What concepts were solidified in the process of working through this challenge?
//Like I said above, iterating over nested objects using for...in. Also, it was great practice in the
//declareWinner function for using nested arrays and setting them equal to variables, then using those
//variables in if/else statements to determine a "winner"



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