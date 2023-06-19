void main(List<String> args) {
  final persona = {
    'nombre': 'Ronnie',
    'apellido': 'Santoyo',
    'edad': 28,
  };

  final direccion = {
    'ciudad': 'Port Moresby',
    'pais': 'Papúa Nueva Guinea',
  };

  print('Persona: $persona');
  print('Length: ${persona.length}');
  print('keys: ${persona.keys}');
  print('values: ${persona.values}');

  //Fusionar dirección con persona
  persona.addAll(direccion);
  print('AddAll: $persona');

  persona.remove('pais');
  print('remove: $persona');

  /* persona.removeWhere((key, value) {
    if (key != 'nombre') {
      return true;
    }

    return false;
  }); */
  /* persona.removeWhere(
    (key, value) => (key != 'nombre') ? true : false,
  );

  print('removeWhere: $persona'); */

  persona.forEach((key, value) {
    print('key: $key    value: $value');
  });

  //Retornar un mapa modificado
  final nuevoMapa = persona.map((key, value) {
    return MapEntry(key, value.toString().toUpperCase());
  });

  print('persona map: $nuevoMapa');
}
