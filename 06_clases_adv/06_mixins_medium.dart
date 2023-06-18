mixin Walker {
  void walk() {
    print("I'm walking");
  }
}

mixin Swimmer {
  void swim() {
    print("I'm swimming");
  }
}

mixin Flyer {
  void fly() {
    print("I'm flying");
  }
}

abstract class Animal {
  void imprimirTipo() => print('Soy un animal');
}

abstract class Mammal extends Animal {
  void imprimirTipo() => print('Soy un mamífero');
}

abstract class Bird extends Animal {
  void imprimirTipo() => print('Soy un ave');
}

abstract class Fish extends Animal {
  void imprimirTipo() => print('Soy un pez');
}

class Cat extends Mammal with Walker {}

class Dove extends Bird with Walker, Flyer {}

class Monstruo = Mammal with Flyer;

void main(List<String> args) {
  Cat cat = new Cat();
  Dove dove = new Dove();

  cat.walk();

  dove.walk();
  dove.fly();
}
