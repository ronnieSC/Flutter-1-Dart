import 'dart:async';

void main(List<String> args) {
  final streamController = StreamController<String>.broadcast();

  streamController.stream.listen((event) => print('Despegando! $event'),
      onError: (err) => print('Error! $err'),
      cancelOnError: false,
      onDone: () => print('Misión completa.'));

  streamController.stream.listen((event) => print('Despegando! $event'),
      onError: (err) => print('Error! $err'),
      cancelOnError: false,
      onDone: () => print('Misión completa.'));

  // entrada del Stream
  streamController.sink.add('Apollo 11');
  streamController.sink.add('Apollo 12');
  streamController.sink.add('Apollo 13');
  streamController.sink.addError('Houston! Tenemos un problema');
  streamController.sink.add('Apollo 14');

  streamController.sink.close();

  print('Fin del main');
}
