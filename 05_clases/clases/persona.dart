class Persona {
  //Campos o propiedades
  String? nombre;
  int? edad;
  String? _bio;

  //Get y sets
  // String get bio {
  //   return _bio ?? 'No hay biografía disponible';
  // }

  String get bio => _bio ?? 'No hay biografía disponible';

  // set bio(String texto) {
  //   _bio = texto;
  // }
  set bio(String texto) => _bio = texto;

  //Constructores
  // Persona(String nombre, int edad) {
  //   this.nombre = nombre;
  //   this.edad = edad;
  // }
  Persona({this.nombre, this.edad});
  Persona.persona30({this.nombre}) {
    this.edad = 30;
  }

  //Métodos
  @override
  String toString() {
    // TODO: implement toString
    return 'nombre: $nombre\n' + 'edad: $edad\n' + 'bio: $bio';
  }
}
