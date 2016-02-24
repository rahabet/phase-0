// DOM Manipulation Challenge

// I worked on this challenge with: Megan Swan.

// Add your JavaScript calls to this page:

// Release 1:

document.getElementById('release-0').classList.add('done');

// Release 2:

document.getElementById("release-1").style.display = "none";

// Release 3:

document.getElementsByTagName('h1')[0].innerHTML = 'I completed release 2';

// Release 4:

document.getElementById("release-3").style.backgroundColor = "#955251";

// Release 5:

var elements = document.getElementsByClassName('release-4');

for (var i = 0; i < elements.length; i++) {
  var element = elements[i];
  element.style.fontSize = "2em";
}

// Release 6:

var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));

