import 'clases/persona.dart';

void main(List<String> args) {
  final persona = new Persona(nombre: 'Ronnie', edad: 28);
  final persona2 = new Persona.persona30(nombre: 'Maria');

  //persona
  //  ..nombre = 'Ronnie'
  //  ..edad = 33;
  //..bio = 'Nació en la costa'; //private

  print(persona);
  print(persona2);
}
