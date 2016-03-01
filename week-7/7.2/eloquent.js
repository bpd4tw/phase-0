// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var age = 24
age = 24 + 1
console.log("You're " + age + ". Looks like you're getting older!")

var answer = prompt("What's your favorite movie?", "...");
console.log("Whoa! " + answer + " is my favorite, too!");



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
for (var sign = "#"; sign.length<8; sign += "#")
  console.log(sign);


for (var n = 1; n <= 100; n++) {
  var output = "";
  if (n % 3 == 0)
    output += "Fizz";
  if (n % 5 == 0)
    output += "Buzz";
  console.log(output || n);
}



// Functions

// Complete the `minimum` exercise.

function min(x, y) {
  if (x < y)
    return x;
  else
    return y;
}

console.log(min(-1,0))

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  Name: "Brian",
  Age: 24,
  favorite_Foods: ["Burriots", "Steak", "BLTs"],
  Quirk: "I'm a leap year baby",
};

//Reflection Questions
// Introduction (Links to an external site.)
// Did you learn anything new about JavaScript or programming in general?
// I found the author's description of programming languages to be interesting. They are simple at their core, but the complexity arises as we add layers. It's like building a maze, and the goal is to keep it as simple and succinct as possible. I also didn't know about the inception of Javascript, so that was interesting to read up on.

// Are there any concepts you feel uncomfortable with?
// My biggest problem will be remembering the syntax. Also, I'll have to be on full alert to not use any Ruby specific language in my JavaScript code.

// Ch. 1: Values, Types, and Operators (Links to an external site.)
// Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.
// The first difference I noticed is that to print something to the console in JavaScript, you have to use console.log. It's also interesting that you can't multiply a string by a number. Instead, if some value doesn't map to a number in an obvious way, "NaN" is produced.  It stand for "not a number and is produced when an operator doesn't yield a precise, numeric result. Also, the ternary operator is new. The value on the left of the question mark for the ternary operator “picks” which of the other two values will come out. When it is true, the middle value is chosen, and when it is false, the value on the right comes out. Lastly, I hadn't come across precise comparitors before JavaScript like === and !==.

// There are a fair amount of similarities between JavaScript and Ruby, though. Like Ruby, Javascript handles order of operations for arithmetic. Also, the core objects of JavaScript are the same as Ruby:numbers, strings, boolean and undefined values. Plus, Javascript uses && and ||, too.

// Ch. 2: Program Structure (Links to an external site.)
// What is an expression?
// A fragment of code that produces a value is called an expression. Every value that is written literally  is an expression. An expression between parentheses is also an expression, as is a binary operator applied to two expressions or a unary operator applied to one. Expressions can operate like subsentences, in which expressions can be placed inside of each other.

// What is the purpose of semicolons in JavaScript? Are they always required?
// JavaScript sometimes lets you to omit  semicolons at the end of a statement. Sometimes, though, they have to be there, or the next line will be treated as part of the same statement. The rules for when it can be safely omitted are somewhat complex and error-prone.

// What causes a variable to return undefined?
// When you ask for the value of an empty variable.

// Write your own variable and do something to it in the eloquent.js file.
// What does console.log do and when would you use it? What Ruby method(s) is this similar to?
// Console.log outputs values. Most JavaScript systems (including all modern web browsers and Node.js) provide a console.log function that writes out its arguments to some text output device. In browsers, the output displays in the JavaScript console.

// Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js files
// Describe while and for loops
// Conditional execution is written with the if keyword in JavaScript. In the simple case, we just want some code to be executed if, and only if, a certain condition holds. The keyword if executes or skips a statement depending on the value of a Boolean expression. The deciding expression is written after the keyword, between parentheses, followed by the statement to execute. You often won’t just have code that executes when a condition holds true, but also code that handles the other case. This alternate path is represented by the second arrow in the diagram. The else keyword can be used, together with if, to create two separate, alternative execution paths.

// Looping control flow allows us to go back to some point in the program where we were before and repeat it with our current program state. A statement starting with the keyword while creates a loop. The word while is followed by an expression in parentheses and then a statement, much likeif. The loop executes that statement as long as the expression produces a value that is true when converted to Boolean type.

// What other similarities or differences between Ruby and JavaScript did you notice in this section?
// Both Ruby and JavaScript utilize conditional tools that revolve around "if" and "while" statements. The difference, though, is the syntax for initiating the conditional loops. Also, JavaScript utilizes a counter variable to keep track of the number of times the code is "looped." Otherwise, they are both similar in how they use conditional statements to produce some output up to a certain point or depending on specified criteria.

// Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file


// Ch. 3: Functions (Links to an external site.) (Skip the sections on closure and recursion)
// What are the differences between local and global variables in JavaScript?
// The parameters to a function behave like regular variables, but their initial values are given by the caller of the function, not the code in the function itself.

// An important property of functions is that the variables created inside of them, including their parameters, are local to the function. This means, for example, that the result variable in the power example will be newly created every time the function is called, and these separate incarnations do not interfere with each other.

// This “localness” of variables applies only to the parameters and to variables declared with the var keyword inside the function body. Variables declared outside of any function are called global, because they are visible throughout the program. It is possible to access such variables from inside a function, as long as you haven’t declared a local variable with the same name.

// When should you use functions?
// A function is a tool to structure larger programs, to reduce repetition, to associate names with subprograms, and to isolate these subprograms from each other.

// The most obvious application of functions is defining new vocabulary. We can create new functions that save us time when trying to perform specific tasks on data, like finding a max/min, for example.

// What is a function declaration?
// It is a shorthand version to declare a function. This is a slightly shorter way to say “var square = function…”. The function keyword can also be used at the start of a statement. The statement defines the variable square and points it at the given function.

// Complete the minimum exercise in the eloquent.js file.
// Ch. 4: Data Structures: Objects and Arrays (Links to an external site.)
// Skip the sections on the Lycanthrope's log, Computing Correlations, and sections from Further Arrayology to the Global Object, but read the chapter summary.
// What is the difference between using a dot and a bracket to look up a property? Ex.array.max vs array["max"]
// The two most common ways to access properties in JavaScript are with a dot and with square brackets. Both value.x and value[x] access a property on value—but not necessarily the same property. The difference is in how x is interpreted. When using a dot, the part after the dot must be a valid variable name, and it directly names the property. When using square brackets, the expression between the brackets is evaluated to get the property name. Whereas value.x fetches the property of value named “x”, value[x] tries to evaluate the expression x and uses the result as the property name.

// For this example, array.max simply wants to access the name of the property. Arrya ["max"], though, is trying to fetch the value of "max" by evaluating the property.

// Create an object called me that stores your name, age, three favorite foods, and a quirk in your eloquent.js file.
// var me = {

// Name: "Brian",

// Age: 24,

// favorite_Foods: ["Burriots", "Steak", "BLTs"],

// Quirk: "I'm a leap year baby",

// };

// What is a JavaScript object with a name and value property similar to in Ruby?
// Javascript objects with a name and value property are similar to Ruby hashes. They hold values that are defined by the names and can be interacted with.