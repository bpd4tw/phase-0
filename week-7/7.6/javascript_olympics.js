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
}



//Driver Code:
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")

console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)




// Reflection