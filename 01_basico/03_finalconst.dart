main() {
  var a = 10;
  final double b = 10;
  const double c = 10;

  final double z;

  late final double x; // la inicializaré después
  x = 10;

  print(x);

  // Diferencias entre final y const:

  // se pueden adicionar elementos
  //final personasFinal = ['Juan', 'Pedro', 'Fernando'];
  final List<String> personasFinal = ['Juan', 'Pedro', 'Fernando'];

  // no se puede cambiar la lista
  //const personasConst = ['Juan', 'Pedro', 'Fernando'];
  List<String> personasConst = const ['Juan', 'Pedro', 'Fernando'];

  personasFinal.add('Maria');
  //personasConst.add('Maria');

  //print(personasFinal);
}
