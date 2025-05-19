abstract class Operacion {
  double suma(double a, double b);
  double resta(double a, double b);
  double multiplicacion(double a, double b);
}

class Calculadora extends Operacion {
  @override
  double suma(double a, double b) => a + b;

  @override
  double resta(double a, double b) => a - b;

  @override
  double multiplicacion(double a, double b) => a * b;
}

void main() {
  var calc = Calculadora();
  print(calc.suma(4, 2));
  print(calc.resta(10, 3));
  print(calc.multiplicacion(5, 6));
}
