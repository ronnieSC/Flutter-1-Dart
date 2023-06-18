main() {
  // Operadores de asignación
  var a = null;
  var b = null;

  //b ??= 20; // asignar el valor si la variable es null

  //print(b);

  int c = 23;
  String resp = c > 25 ? 'c es mayor a 25' : 'c es menor a 25';

  //print(resp);

  int d = b ?? a ?? 100; // si b es nulo, que use el valor de a

  //print(d);

  // Operadores Relacionales
  // Todas retornan un valor booleano
  /**
   * Mayor que
   * Menor que
   * Mayor o igual que
   * Menor o igual que
   * == si dos objetos son iguales
   * != si dos objetos son diferentes
   */

  String persona1 = 'Fernando';
  String persona2 = 'Alberto';

  //print(persona1 == persona2);
  //print(persona1 != persona2);

  int x = 20;
  int y = 30;

  /* print(x > y);
  print(x < y);
  print(x >= y);
  print(x <= y); */

  int i = 10;
  String j = '10';

  print(i is int);
  print(j is! int);
}
