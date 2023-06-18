class Location {
  final double lat;
  final double long;

  // Los objetos con el mismo valor de inicialización no serán considerados diferentes
  const Location(this.lat, this.long);
}

void main(List<String> args) {
  final sanFrancisco1 = new Location(18.2323, 39.9422);
  final sanFrancisco2 = new Location(18.2323, 39.9423);
  final sanFrancisco3 = new Location(18.2323, 39.9423);

  const sanFrancisco4 = const Location(18.2323, 39.9422);
  const sanFrancisco5 = const Location(18.2323, 39.9423);
  const sanFrancisco6 = const Location(18.2323, 39.9423);

  // print(sanFrancisco1 == sanFrancisco2);
  // print(sanFrancisco2 == sanFrancisco3);

  print(sanFrancisco4 == sanFrancisco5);
  print(sanFrancisco5 == sanFrancisco6);
}
