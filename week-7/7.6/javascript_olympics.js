 // JavaScript Olympics

// I paired [with:Jackie Feminella] on this challenge.

// This challenge took me [#] hours.


// Warm Up




// Bulk Up
function win(array){
   for (var i = 0; i < array.length; i++){
      console.log(array[i][0] + " won " + array[i][1]);
}
};


var array = [["Roger Federer", "US Open"],
                  ["Kobe Bryant", "NCAA"]];

win(array)


// var array = ["Roger", "Kobe", "Tiger"]

// var Roger = {
//   name: "Roger"
//   event: "US Open"
// }

// Jumble your words
function reverse(x){
  console.log(x.split("").reverse().join(""));
};

reverse("Brian is my name")


// 2,4,6,8
function evens (array) {
  var even_array = []
  for (var i = 0; i < array.length; i++) {
    if (i % 2 == 0)
      even_array.push(array[i]);
  }
    console.log(even_array)
};




var array = [0, 2, 6, 7, 8, 3];
evens(array)



// "We built this city"

function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};



//Driver Code:
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")

console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)




// // Reflection
// What JavaScript knowledge did you solidify in this challenge?
//Interacting with JavaScript objects. Also, it was nice to go over "for" conditions again.
//Plus, we got some more practice with built in functions.

// What are constructor functions?
//A constructor is a JavaScript function.Contructor functions are another way of creating an object in JavaScript. They are essentially the same as
//literal objects, but the syntax is different for each. Calling a new instance of a constructor function
//is similar to making a new object for a class in Ruby.

// How are constructors different from Ruby classes (in your research)?
// A constructor is a JavaScript function. When used with the "new" keyword,it makes a new object and initializes the new object with a prototype. Hence, constructors and prototypes work in unison. The constructor manufactures new objects and the prototype defines the behaviour of new objects manufactured by the constructor. Prototypes are not classes, though,  and neither are constructor functions bundled with prototypes. They don’t encapsulate their private data, and they don’t have a metaclass object defining their behaviour like Ruby classes do.