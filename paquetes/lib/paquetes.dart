import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:paquetes/classes/reqres_respuesta.dart';
import 'package:paquetes/classes/pais.dart';

void getReqRes_service() {
  final url = Uri.parse('https://reqres.in/api/users?page=2');
  http.get(url).then((value) {
    final resReqRes = requestResponseRespuestaFromJson(value.body);

    // print('page: ${body["page"]}');
    // print('per_page: ${body["per_page"]}');
    // print('id del tercer elemento: ${body["data"][2]["id"]}');

    print('page: ${resReqRes.page}');
    print('per_page: ${resReqRes.perPage}');
    print('id del tercer elemento: ${resReqRes.data[2].id}');
  });
}

//Tarea
void getRestCountriesService() {
  final url = Uri.parse('https://restcountries.com/v3.1/name/colombia');
  http.get(url).then((value) {
    // final body = jsonDecode(value.body)[0];
    // print('Pais: ${body["name"]["common"]}');
    // print('Poblacion: ${body["population"]}');
    // print('Fronteras: ${body["borders"]}');
    // print('Languages: ${body["languages"]["spa"]}');
    // print('Latitud: ${body["latlng"][0]}');
    // print('Longitud: ${body["latlng"][1]}');
    // print('Moneda: ${body["name"]["common"]}');
    // print('Bandera: ${body["name"]["common"]}');

    final pais = paisFromJson(value.body)[0];

    List<String> borders = pais.borders;

    void printBorders(List<String> borders) {
      for (int i = 0; i < borders.length; i++) {
        String palabra = borders[i];
        String primeraLetra = palabra.substring(0, 1);
        String restoDePalabra = palabra.substring(1).toLowerCase();
        String nuevaPalabra = primeraLetra + restoDePalabra;

        print('\t $nuevaPalabra');
      }
    }

    print('Pais: ${pais.name.common}');
    print('Poblacion: ${pais.population}');
    print('Fronteras:');
    printBorders(borders);
    print('Languages: ${pais.languages.spa}');
    print('Latitud: ${pais.latlng[0]}');
    print('Longitud: ${pais.latlng[1]}');
    print('Moneda: ${pais.currencies.cop.name}');
    print('Bandera: ${pais.flags.png}');
  });
}
