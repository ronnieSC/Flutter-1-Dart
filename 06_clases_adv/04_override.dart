class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void imprimirNombre() => print('Nombre: $nombre, Edad: $edad');
}

class Cliente extends Persona {
  String? direccion;
  List ordenes = [];

  Cliente(int edad_actual, String nombre_actual)
      : super(nombre_actual, edad_actual);

  @override
  void imprimirNombre() {
    super.imprimirNombre();
    print('Cliente: $nombre ($edad)');
  }
}

void main(List<String> args) {
  final pedro = new Cliente(28, 'Pedro');

  pedro.imprimirNombre();
}
