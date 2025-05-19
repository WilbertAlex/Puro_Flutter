
abstract class Operacion {

  double suma(double a, double b);
  double resta(double a, double b);
  double multiplicacion(double a, double b);

}
class Calculadora implements Operacion {
  @override
  double suma(double a, double b) {
    return a + b;
  }

  @override
  double resta(double a, double b) {
    return a - b;
  }

  @override
  double multiplicacion(double a, double b) {
    return a * b;
  }

}
void main() {
  var calculadora = Calculadora();


  double resultadoSuma = calculadora.suma(5, 5);
  double resultadoResta = calculadora.resta(6, 5);
  double resultadoMultiplicacion = calculadora.multiplicacion(7, 9);

  print("Suma: $resultadoSuma");
  print("Resta: $resultadoResta");
  print("Multiplicación: $resultadoMultiplicacion");
}