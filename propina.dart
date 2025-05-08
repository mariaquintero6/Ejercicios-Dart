import 'dart:io';

void main (){
  print("Bienvenido a la calculadora de propina");
  print("¿Cual es el total de la cuenta?: ");
  double cuenta = double.parse(stdin.readLineSync()!);
  print("¿Cual es el porcentaje de la propina?: ");
  double propina = double.parse(stdin.readLineSync()!);
  double porcentajeprop = propina / 100;
  double prop = cuenta * porcentajeprop;
  double total = cuenta + prop;
  print("Ingrese el numero de personas para dividir la cuenta: ");
  int personas = int.parse(stdin.readLineSync()!);
  double pagopersona = total / personas;

  print("El porcentaje de propina es: $propina% \nEl total de la propina a pagar es: $prop \nEl total de la cuenta con propina es: $total \nEl total que cada persona debe pagar es: $pagopersona");
}