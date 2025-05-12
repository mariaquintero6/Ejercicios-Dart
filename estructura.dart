void main (){
  mapExample();
}

void listExample(){
  List<String> numbers = ["Uno", "Dos", "Tres"];
  var numbers2 = ["Cuatro", "Cinco", "Seis"];

  numbers[0] = "Uno modificado";
  numbers.add("Siete");
  numbers.addAll(numbers2);
  numbers.sort();
  // numbers.removeAt(0);
  // numbers.remove("Siete");
  // numbers.insert(0, "Cero");
  // numbers.clear();
  print(numbers);

  for (var i = 0; i < numbers.length; i++){
    print(numbers[i]);
  }
}

void setExample(){
  Set<String> numbers = {"uno", "dos", "tres"};
  var numbers2 = {"dos", "cinco", "seis"};
  numbers.add("siete");
  numbers.addAll(numbers2);
  // numbers.remove("uno");
  // numbers.removeWhere((element) => element == "siete");

  for (var i = 0; i < numbers.length; i++){
    print(numbers.elementAt(i));
  }
  print(numbers);
}

void mapExample(){
  Map<String, int> numbers = {
    "uno": 1,
    "dos": 2,
    "tres": 3
  };
  numbers["cuatro"] = 4;
  numbers["uno"] = 10;
  // numbers.remove("dos");
  numbers.removeWhere((key, value) => key == "uno");
  print(numbers);

  for (var i = 0; i < numbers.length; i++) {
    print(numbers.entries.elementAt(i)); 
  }
}