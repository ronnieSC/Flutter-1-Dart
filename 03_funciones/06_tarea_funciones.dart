/** 
 *  Dado el siguiente código 
 *    Optimizarlo lo más posible usando funciones
 *    y todo lo visto en el curso
 * 
 *  Ver el primer ejemplo:
*/
import 'dart:io';

void imprimir(dynamic obj) => stdout.writeln(obj);

String leer() => stdin.readLineSync() ?? '';

void procesarUsuario(int contador, {double salario = 0}) {
  imprimir('=========== Usuario $contador =============');

  imprimir('¿Cúal es su nombre?');
  String nombre = leer();

  imprimir('¿Qué edad tienes?');
  String edad = leer();

  imprimir('¿En qué país naciste?');
  String pais = leer();

  final Map<String, dynamic> usuario = {
    'nombre': nombre,
    'edad': edad,
    'pais': pais
  };

  imprimir('Usuario $contador sin deducciones');
  //stdout.writeln(usuario);
  imprimir(usuario);

  double deducciones = salario * 0.15;
  double salarioNeto = salario - deducciones;

  usuario['salario'] = salario;
  usuario['deducciones'] = deducciones;
  usuario['salarioNeto'] = salarioNeto;

  imprimir(usuario);
}

main() {
  // Ejemplo:
  // Crear una función para imprimir STDOUTS en lugar de
  // la siguiente línea. Luego todos los stdouts deberían ser
  // llamados usando nuestra función personalizada

  int contador = 0;

  procesarUsuario(++contador, salario: 1500);
  procesarUsuario(++contador, salario: 1800);
  procesarUsuario(++contador, salario: 2400);
}
