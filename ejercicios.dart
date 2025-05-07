import 'dart:io';
import 'dart:math';

double CalcularDistacia(double V, double T) {
  return V * T;
}

double Promedio (double nota1, double nota2, double nota3){
  return (nota1 + nota2 + nota3) / 3;
}

int PuntajeTotal (int PPG, int PPE, int PPP){
  return PPG + PPE + PPP;
}

double DevengadoEmpleado(int horas, double tarifahora){
  return horas * tarifahora;
}

double CalcularHipotenusa (int a, int b){

  var a2 = pow(b, 2);
  var b2 = pow(a, 2);

  var sum = a2 + b2;

  var raiz = sum;
  double h = sqrt(raiz);
  return h;
}

double CalcularFahrenheit(double centi){
  return (centi * 1.8) + 32;
}
void main(){
  bool condicion = true;
 while (condicion) { 
  print("Ingrese una opcion: \n1. Calcular la distacia recorrida \n2. Promedio de un estudiantes \n3. Puntaje de un equipo \n4. Planilla de empleado \n5. Calcular la hipotenusa \n6. Celsius a Fahrenheit \n7. Salir");
  int opc = int.parse(stdin.readLineSync()!);
    switch (opc) {
      case 1:
        print("Ejercicio 1");
        print("Digite la velocidad (m/s): ");
        double V = double.parse(stdin.readLineSync()!);
        print("Digite el tiempo (Sg): ");
        double T = double.parse(stdin.readLineSync()!);
        double distacia = CalcularDistacia(V, T);
        print("La distacia recorrida es: $distacia");
        break;

      case 2:
        print("Ejercicio 2");
        print("Digite la primera nota: ");
        double nota1 = double.parse(stdin.readLineSync()!);
        print("Digite la segunda nota: ");
        double nota2 = double.parse(stdin.readLineSync()!);
        print("Digite la tercera nota: ");
        double nota3 = double.parse(stdin.readLineSync()!);
        double prom = Promedio(nota1, nota2, nota3);
        print("El promedio del estudiante es: $prom");
        break;

      case 3:
        print("Ejercicio 3");
        print("Ingrese los partidos ganados: ");
        int PG = int.parse(stdin.readLineSync()!);
        print("Ingrese los partidos empatados: ");
        int PE = int.parse(stdin.readLineSync()!);
        print("Ingrese los partidos perdidos: ");
        int PP = int.parse(stdin.readLineSync()!);
        int PPG = PG * 3;
        int PPE = PE * 1;
        int PPP = PP * 0;
        int puntaje = PuntajeTotal(PPG, PPE, PPP);
        print("Partidos ganados: $PG \nPartidos perdidos: $PE \nPartidos perdidos: $PP \nPuntaje total: $puntaje");
        break;

      case 4:
        print("Ejercicio 4");
        print("Ingrese el nombre del empleado");
        String nombre = stdin.readLineSync()!;
        print("Ingrese la horas trabajadas en el mes: ");
        int horas = int.parse(stdin.readLineSync()!);
        print("Ingrese la tarifa de la hora: ");
        double tarifahora = double.parse(stdin.readLineSync()!);
        double devengado = DevengadoEmpleado(horas, tarifahora);
        print("Nombre del empleado: $nombre \nHoras trabajadas: $horas \nDevengado: $devengado");
        break;

      case 5:
        print("Ejercicio 5");
        print("Ingrese el valor del primer cateto: ");
        int a = int.parse(stdin.readLineSync()!);
        print("Ingrese el valor del segundo cateto: ");
        int b = int.parse(stdin.readLineSync()!);
        double hipotenusa = CalcularHipotenusa(a, b);
        print("El valor de la hiponenusa es: $hipotenusa");
        break;

      case 6:
        print("Ejercicio 6");
        print("Ingrese los grados en centigrados: ");
        double centi = double.parse(stdin.readLineSync()!);
        double fahrenheit = CalcularFahrenheit(centi);
        print("La temperatura en Fahrenheit es: $fahrenheit");
        break;

      case 7:
        print("Saliendo...");
        condicion = false;
        break;

     /*  default:
        print("Opcion invalida");
        break; */
    }
   } 

}