main() {
  for_externo:
  for (int i = 0; i < 5; i++) {
    print('Valor de i: $i');

    for_interno:
    for (int j = 0; j < 5; j++) {
      print('\t Valor de j: $j');

      if (j == 2) {
        break for_externo;
      }
    }
  }
}
