import 'dart:io';

void main(){
  listStudents();
}

void listStudents(){
  Map<String, int> students = {
    "maria": 19,
    "sara": 18,
    "wilson": 20,
    "luissy": 19,
    "sarai": 18
  };

  print("Ingrese un nombre: ");
  String name = stdin.readLineSync()!;
  if (students.containsKey(name)){
    print("El estudiante es: $name - Edad: ${students[name]}");
  }else{
    print("Estudiante no encontrado");
  }
}