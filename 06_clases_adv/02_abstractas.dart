// Las clases abstractas no se pueden instanciar
abstract class Vehiculo {
  bool encendido = false;

  void encender() {
    encendido = true;
    print('Vehículo encendido');
  }

  void apagar() {
    encendido = false;
    print('Vehículo apagado');
  }

  bool revisarMotor();
}

class Carro extends Vehiculo {
  int kilometraje = 0;

  @override
  bool revisarMotor() {
    // TODO: implement revisarMotor
    print('Motor OK');

    return true;
  }
}

void main(List<String> args) {
  final ford = new Carro();

  ford.encender();
  ford.apagar();

  ford.revisarMotor();
}
