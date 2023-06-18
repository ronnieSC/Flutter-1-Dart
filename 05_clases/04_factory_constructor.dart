class Rectangulo {
  int? base;
  int? altura;
  int? area;
  String? tipo;

  //Devolver una nueva instancia o una instancia ya creada
  factory Rectangulo(int base, int altura) {
    if (base == altura) {
      return Rectangulo.cuadrado(base);
    }

    return Rectangulo.rectangulo(base, altura);
  }

  Rectangulo.cuadrado(int base) {
    this.base = base;
    this.altura = base;
    this.area = base * base;
    this.tipo = 'Cuadrado';
  }

  Rectangulo.rectangulo(int base, int altura) {
    this.base = base;
    this.altura = altura;
    this.area = base * altura;
    this.tipo = 'Rectángulo';
  }

  @override
  String toString() {
    // TODO: implement toString
    Map map = {
      'base': this.base,
      'altura': this.altura,
      'area': this.area,
      'tipo': this.tipo
    };
    return map.toString();
  }
}

void main(List<String> args) {
  final figura = new Rectangulo(5, 10);

  print(figura);
}
