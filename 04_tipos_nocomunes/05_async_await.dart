import 'dart:io';
import 'package:path/path.dart' as p;

void main(List<String> args) async {
  String ruta_archivo = '04_tipos_nocomunes\\assets\\personas.txt';
  String ruta_directorio = p.current;

  String path = p.join(ruta_directorio, ruta_archivo);

  String texto = await leerArchivo(path);

  print(texto);
}

Future<String> leerArchivo(String path) async {
  File file = new File(path);

  return file.readAsString();
}
