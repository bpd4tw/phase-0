 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:I want to create a game that has at least two objects with properties values and has two //functions that interact wiht those objects.
//
// Overall mission:Design a game tusing two objects and two functions (at least). Include conditional elements //as well.
//
//Goals:I want my characters to interact with one another. When I call a function on one character, it should //change/alter a property value within that character object. I'll also want to have a threshold for my //character values. Once they reach a certain value, something within the game should notify the users and the //game should end. Here's a tentative plan:
//
////First, I'll log a question to my user asking for an input. I'll ask for the name of a new dog and breed that is either a pull dog, mutt, or chiwawa.
//Define two literal objects. One will be dog, the other dogCatcher. Dog will have a property of "energy" set
//to an integer value. I'll use an "if" statement to set the nergy to different levels for the three dogs. He'll //also have a "collarBio" property that is in object literal notation with info on the dog's name and breed that //can be defined when calling the "dogInfo" function. "dogInfo" will also log the dog's info to the console. //I'll then have another object, this one named dogCatcher. He will have an "annoyance threshold" property, also //set to an integer value.
//To go with the dogCatcher object, I'll need a couple functions for the dog object to lower the dogCatcher's //annoyance threhold property.  I'll define a function called "bark". It will log a "woof" to the console and //lower the dogCatcher threshold by 1. I'll define a "growl" function to lower the threshold by 2 and a "poop" //function that will automatically bring the threshold to 0. Each time the threshold is lowered, its value will //be logged.  When the dogCatcher theshold equals zero, he will "catch" the dog and the game will end. Also, the //functions of "bark" and "growl" will reduce the energey of the dog object. This way, the more annoying dog (//chiwawa) will potentially tire out from barking without the dogCatcher being annoyed enough to catch him (i.e. //his energy equals 0). Each function should log the energy of the dog, the annoyance threshold of the dogCatcher and the function options for the dog to use.
//
//Characters:dogCatcher, and dog (start with a dog, then add other animals down the road)
//
//Objects:The dog catcher and animals. They will both have property values that will change the more the dog bugs the dogCatcher
//
//Functions:The function for the dogCatcher will be to catch the dog once the dogCatcher threshold for annoyance equals 0. The functions for the animal will be something like "bark", "growl", "walkAway", and "poop" (lol). I'll create some sort of threshold that the dog catcher is willing to let slide. Once it is passed, he'll wear the dog down and catch it.

// Pseudocode
//(1)Create a function to log a question to the console. It will ask for a dog name and breed. The breed will have to either be a Bulldog, Mutt or Chiwawa. The function will repeat back what is entered and then give the options for what the dog can do (what functions can be used) to annoy the dogCatcher.
//(2)Create a dog object. It should have an "if" statement as a value for "energy" property. The "if" will change the energy level to a different value for each of the three possible breed inputs. The energy of Bulldog will be 10, Mutt will be 6 and Chiwawa will be 3. Also, the name property will have a value equal to the input name.
//(3)Create dogCatcher object. He will have a property "annoyanceThreshold" with an integer value of, say 10.
//(4)Create functions. The first function should be defined as "bark." Calling "bark" on the dog should reduce energy of dog by 1 and annoyance threshold of dogCatcher by 1 and log the result. "growl" will reduce both by 3 and console the result. "poop" will reduce both value to 0. If the value of dog energy is 0 before anooyance Threshold, the dog "leaves." If the annoyanceThreshold is zero before the energy level is zero, the dog is caught. In both cases, the game ends. The game will log a message explaining the ending.
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

function bark(){
  dog.energy -= 1;
  dogCatcher.annoyanceTolerance -= 1;
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

function growl(){
  dog.energy -= 3;
  dogCatcher.annoyanceTolerance -= 3;
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

// Refactored Code
var dog = {
  name: "stray",
  energy: 10,
            };

var dogCatcher = {
  name: "Fred",
  annoyanceTolerance: 10,
            };

function bugCatcher(annoy){
  var bug = annoy.toString();
  if (bug = "bark"){
    dog.energy -= 1;
    dogCatcher.annoyanceTolerance -= 1;
    console.log("----------------------------------------")
    console.log("WOOF WOOF!");
  }
  else if (bug = "growl"){
    dog.energy -= 3;
    dogCatcher.annoyanceTolerance -= 3;
    console.log("----------------------------------------")
    console.log("GGGGRRRRRRRRR!");
  }
  else if (bug = "poop"){
  dogCatcher.annoyanceTolerance = 0;
  console.log("PPPP - FFFF - TTTTTTT");
  console.log("Well, that really buried the dog.\nThe dog catcher can't tolerate that  behavior.\nOff to the pound!");
  };
  if (dog.energy > 0 && dogCatcher.annoyanceTolerance >0){
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
    console.log("Both the dog and dog catcher wore themselves out!\nTime for a nap...");
  };
};

bugCatcher("growl")





// Reflection
//
//
//
//
//
//
//
//