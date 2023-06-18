class MiServicio {
  // 2. Crear una propiedad estática privada
  static final MiServicio _singleton = new MiServicio._();

  // 3. Crear un constructor factory
  factory MiServicio() {
    return _singleton;
  }

  // 1. Creamos un constructor privado
  MiServicio._();

  // MiServicio._patito();

  String url = 'https://abc';
  String key = 'ABC123';
}
