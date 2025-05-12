import 'dart:io';

int Fibonacci(int cantidad) {
  if (cantidad <= 1) return cantidad;
  return Fibonacci(cantidad - 1) + Fibonacci(cantidad - 2);
}

int Fibonacci2(int cantidad2) {
  if (cantidad2 == 0) return 0;
  if (cantidad2 == 1) return 1;

  int a = 0, b = 1, resultado = 0;

  for (int i = 2; i <= cantidad2; i++) {
    resultado = a + b;
    a = b;
    b = resultado;
  }

  return resultado;
}
void main() {
  print("Ingrese la cantidad de numeros a mostrar: ");
  int cantidad = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < cantidad; i++) {
    print(Fibonacci(i));
  }

  print("Ingrese la posición de la serie de Fibonacci: ");
  int cantidad2 = int.parse(stdin.readLineSync()!);
  int resultado = Fibonacci2(cantidad2);
  print("El número en la posición $cantidad2 de la serie de Fibonacci es: $resultado");
}