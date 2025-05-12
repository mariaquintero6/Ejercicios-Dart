void main (){
  listExample();
}

void listExample(){
  List<String> numbers = ["Uno", "Dos", "Tres"];
  var numbers2 = ["Cuatro", "Cinco", "Seis"];

  numbers[0] = "Uno modificado";
  numbers.add("Siete");
  numbers.addAll(numbers2);
  numbers.removeAt(0);
  numbers.remove("Siete");
  numbers.insert(0, "Cero");
  numbers.clear();
  print(numbers);
}