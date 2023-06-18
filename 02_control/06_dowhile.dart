import 'dart:io';

main() {
  String continuar = 'y';
  int contador = 0;

  do {
    contador++;
    stdout.writeln('Contador: $contador');

    stdout.write('desea continuar? (y/n): ');

    continuar = stdin.readLineSync() ?? 'n';
  } while (continuar == 'y');
}
