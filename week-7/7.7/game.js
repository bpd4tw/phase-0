 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:I want to create a game that has at least two objects with properties values and has two functions that interact wiht those objects.
//
// Overall mission:Design a game tusing two objects and two functions (at least). Include conditional elements //as well.
//
//Goals:I want my characters to interact with one another. When I call a function on one character, it should //change/alter a property value within that character object. I'll also want to have a threshold for my //character values. Once they reach a certain value, something within the game should notify the users and the //game should end. Here's a tentative plan:
//
////First, I'll log a question to my user asking for an input. I'll ask for the name of a new dog and breed that is either a pull dog, mutt, or chiwawa.
//Define two literal objects. One will be dog, the other dogCatcher. Dog will have a property of "energy" set
//to an integer value. He'll //also have a "collarBio" property that is in object literal notation with info on the dog's name and breed that //can be defined when calling the "dogInfo" function. "dogInfo" will also log the dog's info to the console. //I'll then have another object, this one named dogCatcher. He will have an "annoyance threshold" property, also //set to an integer value.
//To go with the dogCatcher object, I'll need a couple functions for the dog object to lower the dogCatcher's //annoyance threhold property.  I'll define a function called "bark". It will log a "woof" to the console and //lower the dogCatcher threshold by 1. I'll define a "growl" function to lower the threshold by 2 and a "poop" //function that will automatically bring the threshold to 0. Each time the threshold is lowered, its value will //be logged.  When the dogCatcher theshold equals zero, he will "catch" the dog and the game will end. Also, the //functions of "bark" and "growl" will reduce the energey of the dog object. This way, the more annoying dog (//chiwawa) will potentially tire out from barking without the dogCatcher being annoyed enough to catch him (i.e. //his energy equals 0). Each function should log the energy of the dog, the annoyance threshold of the dogCatcher and the function options for the dog to use.
//
//Characters:dogCatcher, and dog (start with a dog, then add other animals down the road)
//
//Objects:The dog catcher and animals. They will both have property values that will change the more the dog bugs the dogCatcher
//
//Functions:The function for the dogCatcher will be to catch the dog once the dogCatcher threshold for annoyance equals 0. The functions for the animal will be something like "bark", "growl" and "poop" (lol). I'll create some sort of threshold that the dog catcher is willing to let slide. Once it is passed, he'll catch the created dog.

// Pseudocode
//
//(1)Create a dog object. It should have a "name" and "energy" property.
//(2)Create dogCatcher object. He will have a property "annoyanceThreshold" with an integer value of, say 10.
//(4)Create functions. The first function should be defined as "bark." Calling "bark" on the dog should reduce energy of dog by 1 and annoyance threshold of dogCatcher by 1 and log the result. "growl" will reduce both by 3 and console the result. "poop" will reduce reduce the tolerance value to 0. If the value of dog energy is 0 before anooyance Threshold, the dog "leaves." If the annoyanceThreshold is zero before the energy level is zero, the dog is caught. In both cases, the game ends. The game will log a message explaining the ending.
//

// Initial Code


var dog = {
  name: "stray",
  energy: 10,
            };

var dogCatcher = {
  name: "Fred",
  annoyanceTolerance: 10,
            };

function bark(i){
  dog.energy -= 1*i;
  dogCatcher.annoyanceTolerance -= 1*i;
  if (dog.energy > 0 && dogCatcher.annoyanceTolerance >0){
    console.log("----------------------------------------")
    console.log("WOOF WOOF!");
    console.log();
    console.log("That dog, " + dog.name + ", is a real pest!\nHe's tired himself down to " + dog.energy + "/10 energy points!\nAnd the dog catcher, " + dogCatcher.name + ", is pissed, too.\nHis tolerance is down to " + dogCatcher.annoyanceTolerance + "/10 annoyance points.");
    console.log();
  }
  else if (dog.energy < 1 && dogCatcher.annoyanceTolerance > 0){
    console.log("That dog, " + dog.name + ", tired himself out!\nLooks like " + dogCatcher.name + " can take a break. The streets are clean!");
    console.log();
  }
  else if (dog.energy > 0 && dogCatcher.annoyanceTolerance <1){
    console.log("The dog catcher, " + dogCatcher.name + ", has had enough.\nHe tried to be nice, but now it's time to take this dog to the pound!");
    console.log();
  };
};

function growl(i){
  dog.energy -= 3*i;
  dogCatcher.annoyanceTolerance -= 3*i;
  if (dog.energy > 0 && dogCatcher.annoyanceTolerance >0){
    console.log("----------------------------------------")
    console.log("GGGGRRRRRRRRR!");
    console.log();
    console.log("That dog, " + dog.name + ", is a real pest!\nHe's tired himself down to " + dog.energy + "/10 energy points!\nAnd the dog catcher, " + dogCatcher.name + ", is pissed, too.\nHis tolerance is down to " + dogCatcher.annoyanceTolerance + "/10 annoyance points.");
    console.log();
  }
  else if (dog.energy < 1 && dogCatcher.annoyanceTolerance > 0){
    console.log("That dog, " + dog.name + ", tired himself out!\nLooks like " + dogCatcher.name + " can take a break. The streets are clean!");
    console.log();
  }
  else if (dog.energy > 0 && dogCatcher.annoyanceTolerance <1){
    console.log("The dog catcher, " + dogCatcher.name + ", has had enough.\nHe tried to be nice, but now it's time to take this dog to the pound!");
    console.log();
  }
  else {
    console.log ("----------------------------------------");
    console.log("Both the dog and dog catcher wore themselves out!\nTime for a nap...");
  };
};


function poop(){
  console.log("PPPP - FFFF - TTTTTTT");
  dog.energy = 0;
  console.log("Well, that really buried the dog.\nThe dog catcher can't tolerate that behavior.\nOff to the pound!");
};


function eat_garbage(i){
  console.log("MUNCH MUNCH MUNCH");
  dog.energy += 2*i;
  if (dog.energy < 18){
  console.log("That dog found some nice eats in the garbage. He looks pepped up!\nHis energy is at "+ dog.energy + " units.");
  console.log();
  }
  else {
    dog.energy -= 2*i;
    console.log("Jeez. The dog ate so much that he puked.\nTry not feeding him so much garbage next time :(.\nHis energy is back to " + dog.energy + " units.");
    console.log();
  }
};


// Refactored Code

function Dog(name) {
  this.name = name;
  this.energy = 10;
}

function DogCatcher(name) {
  this.name = name;
  this.tolerance = 10;
}



DogCatcher.prototype.loseTolerance = function(tolerance, multiplier) {
  this.tolerance -= tolerance * multiplier
}

Dog.prototype.loseEnergy = function(energy, multiplier) {
  this.energy -= energy * multiplier
}

Dog.prototype.gainEnergy = function(energy, multiplier) {
  this.energy += energy * multiplier
}


Dog.prototype.bark = function(i, DogCatcher){
  this.loseEnergy(1, i);
  DogCatcher.loseTolerance(1, i);
  if (this.energy > 0 && DogCatcher.tolerance > 0){
    console.log("----------------------------------------")
    console.log("WOOF WOOF!");
    console.log();
    console.log("That dog, " + this.name + ", is a real pest!\nHe's tired himself down to " + this.energy + "/10 energy points!\nAnd the dog catcher, " + DogCatcher.name + ", is pissed, too.\nHis tolerance is down to " + DogCatcher.tolerance + "/10 annoyance points.");
    console.log();
  }
  else if (this.energy < 1 && DogCatcher.tolerance > 0){
    console.log("That dog, " + this.name + ", tired himself out!\nLooks like " + DogCatcher.name + " can take a break. The streets are clean!");
    console.log();
  }
  else if (this.energy > 0 && DogCatcher.tolerance < 1){
    console.log("The dog catcher, " + DogCatcher.name + ", has had enough.\nHe tried to be nice, but now it's time to take this dog to the pound!");
    console.log();
  };
}

Dog.prototype.growl = function(i, DogCatcher){
  this.loseEnergy(3, i)
  DogCatcher.loseTolerance(3, i);
  if (this.energy > 0 && DogCatcher.tolerance > 0){
    console.log("----------------------------------------")
    console.log("GGGGRRRRRRRRRRRR!");
    console.log();
    console.log("That dog, " + this.name + ", is a real pest!\nHe's tired himself down to " + this.energy + "/10 energy points!\nAnd the dog catcher, " + DogCatcher.name + ", is pissed, too.\nHis tolerance is down to " + DogCatcher.tolerance + "/10 annoyance points.");
    console.log();
  }
  else if (this.energy < 1 && DogCatcher.tolerance > 0){
    console.log("That dog, " + this.name + ", tired himself out!\nLooks like " + DogCatcher.name + " can take a break. The streets are clean!");
    console.log();
  }
  else if (this.energy > 0 && DogCatcher.tolerance < 1){
    console.log("The dog catcher, " + DogCatcher.name + ", has had enough.\nHe tried to be nice, but now it's time to take this dog to the pound!");
    console.log();
}
}


Dog.prototype.poop = function() {
  console.log("PPPP - FFFF - TTTTTTT");
  this.energy = 0;
  console.log("Well, that really buried the dog.\nThe dog catcher can't tolerate that behavior.\nOff to the pound!");
};

Dog.prototype.eat_garbage = function(i){
  console.log("MUNCH MUNCH MUNCH");
  this.gainEnergy(2, i)
  if (this.energy < 18){
    console.log("That dog found some nice eats in the garbage. He looks pepped up!\nHis energy is at "+ this.energy + " units.");
    console.log();
  }
  else {
    this.loseEnergy(2, i);
    console.log("Jeez. The dog ate so much that he puked.\nTry not feeding him so much garbage next time :(.\nHis energy stayed at " + this.energy + " units.\nTry another command!");
    console.log();
}
}


Dog.prototype.annoyCatcher = function(annoy, DogCatcher) {
  var bug = annoy.toString();
  if (bug == "bark"){
    this.bark(1, DogCatcher)
  }
  else if (bug == "growl"){
    this.growl(1, DogCatcher)
  }
  else if (bug == "poop") {
    this.poop()
  }
  else if (bug == "eat_garbage"){
    this.eat_garbage(1)
  }
};



var snoopy = new Dog('Snoopy');
var catcher = new DogCatcher('Mike');

snoopy.annoyCatcher('eat_garbage', catcher)
snoopy.annoyCatcher('growl', catcher)
snoopy.annoyCatcher('growl', catcher)
snoopy.annoyCatcher('growl', catcher)
snoopy.annoyCatcher('bark', catcher)


// Reflection
//What was the most difficult part of this challenge?
//Really jut knowing when to stop. I'm pleased with what I have here, but know there is much more I could add.
//I could create some sort of "gameplay" object that let's users know when the game begins and ends. Also, I could always prompt users for input to start the game.
//
//What did you learn about creating objects and functions that interact with one another?
//I learned the differences between Ruby and JavaScript when it comes to objects and their interactions.
//Instead of classes like in Ruby, I used constructor methods and .prototype in my refactored solution.
//I had to adjust to object creation in JavaScript. Not only did I pass functions to instances of my objects,
//but I also passed functions into one another. Although I had obvously done this before in Ruby, it took some
//time adjusting to the differences here in JavaScript.
//
//Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
//I didn't really use any built in methods in my refactored solution. Instead, my game really needed cleaning up in regards to instances of each object and function.
//
//How can you access and manipulate properties of objects?
//You can always access the property directly with this.[property] and set it to whatever value you desire.
//Other than than, You can create functions that are linked to an instance of an object through prototype and
//alter properties that way.