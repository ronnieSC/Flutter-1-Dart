/*
  * En Dart cada clase tiene, exactamente una superclase
*/

// Los mixin no pueden ser instanciados
// Los mixin no pueden tener constructores
mixin Logger {
  void imprimir(String texto) {
    final hoy = DateTime.now();
    print('$hoy :::: $texto');
  }
}

abstract class Astro with Logger {
  String? nombre;

  Astro() {
    imprimir('-- Init del Astro --');
  }

  void existo() {
    imprimir('-- Soy un ser celestial y existo --');
  }
}

class Asteroide extends Astro {
  String? nombre;

  Asteroide(this.nombre) {
    imprimir('Soy $nombre');
  }
}

void main(List<String> args) {
  final ceres = new Asteroide('Ceres');
}
