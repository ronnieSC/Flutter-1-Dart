main() {
  // ==========Números
  int a = 10;
  double b = 5.5;

  int? c; //c puede ser nulo

  int _a = 30;
  double $b = 40;

  double resultado = _a + $b;

  //print(resultado);

  // ======== String
  String nombre = 'Tony';
  String? nombre2 = "Tony";
  String nombre3 = "O'Connor";
  String apellido = 'Stark';

  String nombreCompleto = '$nombre $apellido';

  String multilinea = '''
  Hola Mundo
  ¿Cómo estás?
  $nombre2
  O'Connor
  ''';

  //print(nombreCompleto);

  //========Booleans
  bool isActive = true;
  bool isNotActive = !isActive; //el signo de admiración para la negación

  //print(isNotActive!); //Hey Dart, confía en mí, no es nulo

  //========Listas
  //List<String> villanosDeprecated = new List();
  List<String> villanos = ['Lex', 'Red Skull', 'Doom'];

  villanos[0] = 'Superman';

  villanos.add('Duende Verde');
  villanos.add('Duende Verde');
  villanos.add('Duende Verde');
  villanos.add('Duende Verde');

  //print(villanos);

  var villanosSet = villanos.toSet();
  //print(villanosSet.toList());

  //=========Sets
  Set<String> villanos2 = {'Lex', 'Red Skull', 'Doom'};

  villanos2.add('Duende Verde');
  villanos2.add('Duende Verde');
  villanos2.add('Duende Verde');
  villanos2.add('Duende Verde');

  //print(villanos2);

  //==========Maps (Diccionarios)
  Map<int, dynamic> ironman = {
    1: 'Tony Stark',
    2: 'Inteligencia y el dinero',
    3: 9000,
  };

  //print(ironman[3]);

  Map<String, dynamic> capitan = new Map();

  capitan.addAll({
    'nombre': 'Steve',
    'poder': 'Soportar droga sin morir',
    'nivel': 5000,
  });

  print(capitan);
}
