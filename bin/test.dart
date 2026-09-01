import 'dart:io';
main(){
  num? number = num.tryParse(stdin.readLineSync() ?? "");
  print(number ?? "No number given");
}