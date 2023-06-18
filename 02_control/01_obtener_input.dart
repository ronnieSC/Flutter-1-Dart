import 'dart:io';

main() {
  // imprimir en terminal o cmd
  stdout.writeln('¿Cuál es tu nombre?');

  // leer información
  String? nombre = stdin.readLineSync();

  stdout.write('Tu nombre es: $nombre');
}
