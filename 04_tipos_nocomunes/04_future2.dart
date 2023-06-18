import 'dart:io';

void main(List<String> args) {
  File file = new File(
      Directory.current.path + '\\04_tipos_nocomunes\\assets\\personas.txt');

  Future<String> f = file.readAsString();

  // imprime el primer valor retornado por el Future
  // La forma no resumida es:
  // f.then((data) => print(data))
  f.then(print);

  print('Fin del main');
}
