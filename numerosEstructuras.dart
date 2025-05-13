import 'dart:io';

bool Primos(int nums){
  if (nums < 2) return false;
  for (var i = 2; i < nums; i++) {
    if (nums % i == 0) return false;
  }
  return true;
}
void main(){
  listNumbers();
}

void listNumbers(){
  List<int> listnoPrimos = [];
  List<int> listprimos = [];
  print("Ingresa el tamaño de la lista: ");
  int tamano = int.parse(stdin.readLineSync()!); 
  for (var i = 0; i < tamano; i++) {
    print("Ingrese el valor: ");
    int nums = int.parse(stdin.readLineSync()!);
    bool primos = Primos(nums);
    if (primos == true){
      listprimos.add(nums);
    }else{
      listnoPrimos.add(nums);
    }
  }
  print("Numeros primos: $listprimos");
  print("Numeros no primos: $listnoPrimos");
}