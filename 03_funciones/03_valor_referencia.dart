String capitalizar(String texto) {
  texto = texto.toUpperCase();

  return texto;
}

Map<String, String> capitalizarMapa(Map<String, String> mapa) {
  // Rompemos la referencia
  mapa = {...mapa};
  mapa['nombre'] = mapa['nombre']?.toUpperCase() ?? 'No hay nombre';

  return mapa;
}

void main(List<String> args) {
  String nombre = 'Ronnie';
  String nombre2 = capitalizar(nombre);

  //print(nombre);
  //print(nombre2);

  Map<String, String> persona = {
    'nombre': 'Tony Stark',
  };

  Map<String, String> persona2 = capitalizarMapa(persona);
  // El parámetro persona está siendo enviado por referencia

  print(persona); //{nombre: TONY STARK}
  print(persona2); //{nombre: TONY STARK}
}
