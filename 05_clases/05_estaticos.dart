import 'dart:convert';

class Herramientas {
  static const List<String> listado = [
    'Martillo',
    'Llave Inglesa',
    'Desarmador'
  ];

  static void imprimirListado() => listado.forEach((element) {
        print(element);
      });
}

void main(List<String> args) {
  Herramientas.imprimirListado();
}
