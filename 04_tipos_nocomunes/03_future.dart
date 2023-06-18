void main(List<String> args) {
  Future<String> timeOut = Future.delayed(Duration(seconds: 3), () {
    print('3 segundos después!');

    return 'Retorno del future';
  });

  timeOut.then((texto) => print(texto));

  print('Fin del main');
}
