import 'clases/mi_servicio.dart';

void main(List<String> args) {
  final spotifyService = new MiServicio();
  spotifyService.url = 'https://api.spotify.com';

  final spotifyService2 = new MiServicio();
  spotifyService2.url = 'https://api.spotify.com/v3';

  print(spotifyService == spotifyService2);
}
