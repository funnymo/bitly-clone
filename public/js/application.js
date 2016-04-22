//$().ready(function() {

var array = ["http://bit.ly/1rpf9gF",
             "http://bit.ly/1NmrThw",
             "http://bit.ly/1VInQyD",
             "http://bit.ly/1rpg1lk",
             "http://bit.ly/1T1tDJx",
             "http://bit.ly/1MKA3QP",
             "http://bit.ly/1TlclKg",
             "http://bit.ly/26gRGOo",
             "http://bit.ly/1NDtCtF",
             "http://bit.ly/1Nmsos0"];

function shuffle(array) {
  var currentIndex = array.length;
  var temporaryValue;
  var randomIndex;
  while (0 !== currentIndex) {
    randomIndex = Math.floor(Math.random() * currentIndex);
    currentIndex -= 1;
    temporaryValue = array[currentIndex];
    array[currentIndex] = array[randomIndex];
    array[randomIndex] = temporaryValue;
  }
  return array;
}
var shuffled_images = shuffle(array);
var yourbackground = document.getElementById('img');
yourbackground.style.backgroundImage = 'url(' + shuffled_images[0] + ')';

//});


