void main(List<String> args) {
  String nombre = 'Ronnie';
  String apellido = 'Santoyo';

  String nombreCompleto = '$nombre' ' ' '$apellido';

  print('String: $nombreCompleto');
  print('Length: ${nombreCompleto.length}');
  print('Contains R: ${nombreCompleto.contains('R', 0)}');
  print('EndsWith o: ${nombreCompleto.endsWith('o')}');
  print('PadLeft: ${nombreCompleto.padLeft(20, '...')}');
  print('PadRight: ${nombreCompleto.padRight(20, '...')}');

  print('Operador []: ${nombreCompleto[10]}');
  print('Operador *: ${nombreCompleto * 2}');
  print('Operador *: ${'*' * 10}');

  print('ReplaceAll: ${nombreCompleto.replaceAll(RegExp(r'o'), 'i')}');
  print('Substring: ${nombreCompleto.substring(5, 7)}');
  print('indexOf n: ${nombreCompleto.indexOf('n')}');

  print('Split: ${nombreCompleto.split(' ')}');
  print(
      'Ultima Letra Upper: ${nombreCompleto[nombreCompleto.length - 1].toUpperCase()}');
}
