import 'dart:io';

int sumar(int a, int b) {
  return a + b;
}

int restar(int a, int b) {
  return a - b;
}

void main(){
  bool condicion = true;
 while (condicion) { 
  print("Ingrese una opcion: \n1. sumar \n2. Restar \n3. Salir");
  int opc = int.parse(stdin.readLineSync()!);
    switch (opc) {
      case 1:
        print("digite el primer valor");
        int a = int.parse(stdin.readLineSync()!);
        print("digite el segundo valor");
        int b = int.parse(stdin.readLineSync()!);
        int resultado = sumar(a, b);
        print("La suma de $a y $b es: $resultado");
        break;

      case 2:
        print("digite el primer valor");
        int a = int.parse(stdin.readLineSync()!);
        print("digite el segundo valor");
        int b = int.parse(stdin.readLineSync()!);
        int resultado = restar(a, b);
        print("La resta de $a y $b es: $resultado");
        break;

      case 3:
        print("Saliendo...");
        condicion = false;
        break;

     /*  default:
        print("Opcion invalida");
        break; */
    }
    //Declaracion de variables y pedir datos al usuario
    // print("digite el primer valor");
    // int a = int.parse(stdin.readLineSync()!);
    // print("digite el segundo valor");
    // int b = int.parse(stdin.readLineSync()!);
    // int resultado = sumar(a,b);
    // // int resultado = a + b;
    // print("La suma de $a y $b es: $resultado");
   } 
}
