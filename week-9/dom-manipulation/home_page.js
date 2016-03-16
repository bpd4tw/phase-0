// DOM Manipulation Challenge


// I worked on this challenge [with:Hanna Taylor ].


// Add your JavaScript calls to this page:



// Release 1:

document.getElementById("release-0").className += "done";


// Release 2:

document.getElementById("release-1").style.visibility = 'hidden';



// Release 3:

document.getElementsByTagName('h1')[0].innerHTML = "I completed release 2";


// Release 4:
document.getElementById('release-3').style.backgroundColor = "#955251";


// Release 5:

var changeSize =  document.getElementsByClassName('release-4');
 for (var i = 0; i < changeSize.length; i++){
 changeSize[i].style.fontSize = "2em";
 }

//Release 6:
var release6 = document.getElementById('hidden');
document.body.appendChild(release6.content.cloneNode(true));

//Reflection
//What did you learn about the DOM?
//You can manipulate the elements and their properties within HTML and CSS using JavaScript. It's also important to pay close //attention to sytax, per usual. If you are attempting to select a specific class, you'll have to use some sort of loop to access //the values.

//What are some useful methods to use to manipulate the DOM?
//We frequently reused .getElementsById, .getElementsByClassName, getElementsByTagName and .appendChild. .Style was quite important when it came to adjusting the CSS values of given HTML elements.