void main(List<String> args) {
  Future<String> timeOut = Future.delayed(Duration(seconds: 3), () {
    if (1 == 1) {
      throw 'Auxilio!, esto explotó!!';
    }

    return 'Retorno del future';
  });

  timeOut.then((texto) => print(texto)).catchError((error) => print(error));

  print('Fin del main');
}
