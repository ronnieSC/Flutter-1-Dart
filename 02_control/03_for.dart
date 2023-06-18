import 'dart:io';

main() {
  /*
  for (int i = 0; i < 10; i++) {
    print('index: ${i + 5}');
  }
  */

  // Ejercicio
  stdout.write('Ingresa un número: ');
  int numero = int.parse(stdin.readLineSync() ?? '0');

  for (int i = 1; i <= 10; i++) {
    stdout.writeln('$i x $numero = ${i * numero}');
  }
}
