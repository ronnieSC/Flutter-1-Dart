void main(List<String> args) {
  //int volumen = 1; // 0 = volumen bajo, 1 = volumen medio, 2 = volumen alto
  Audio volumen = Audio.alto;

  switch (volumen) {
    case Audio.bajo:
      print('Volumen bajo');
      break;
    case Audio.medio:
      print('Volumen medio');
      break;
    case Audio.alto:
      print('Volumen alto');
      break;
    default:
      print(volumen);
  }

  // Obtener una lista de todos los valores de un enum
  List<Color> colores = Color.values;
  assert(colores[2] == 'azul');
}

enum Color { rojo, verde, azul }

enum Audio {
  bajo,
  medio,
  alto,
}
