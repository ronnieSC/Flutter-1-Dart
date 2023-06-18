/*
  Un callback es una función que se pasa como argumento de otra 
  función y se invoca en el futuro después de que el evento 
  ocurra en otra función
*/

void main(List<String> args) {
  var choice = callbackFunction;
  choice(15);
}

callbackFunction(var a) {
  print(a);
}
