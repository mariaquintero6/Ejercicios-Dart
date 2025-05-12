import 'dart:io';

int Factorial(int num){
   int resultado = 1;
  for (int i = 1; i <= num; i++) {
    resultado *= i;
  }
  return resultado;
}

int Factorial2(int num2) {
  if (num2 <= 1) {
    return 1;
  } else {
    return num2 * Factorial2(num2 - 1);
  }
}
void main(){
  print("Ingrese el numero: ");
  int num = int.parse(stdin.readLineSync()!);
  int factorial = Factorial(num);
  print("El factorial del numero $num es: $factorial");

  print("Ingrese el numero: ");
  int num2 = int.parse(stdin.readLineSync()!);
  int factorial2 = Factorial2(num2);
  print("El factorial del numero $num2 es: $factorial2");
}