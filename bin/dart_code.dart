import 'dart:io';
main(){
  String y_n = "";
  print("====================================");
  print("    SMART TEMPERATURE CONVERTER    ");
  print("====================================");
  print("");
  print("1. Celsius to Fahrenheit");
  print("2. Fahrenheit to Celsius");
  print("3. Celsius to Kelvin");
  print("4. Kelvin to Celsius");
  print("5. Fahrenheit to Kelvin");
  print("6. Kelvin to Fahrenheit");
  print("7. Exit");
  do {
    print("");
    stdout.write("Enter your choice : ");
    int cho = int.parse(stdin.readLineSync()!);
    print("");
    if (cho == 1) {
      stdout.write("Enter temperature in Celsius : ");
      double c = double.parse(stdin.readLineSync()!);
      double f = (c * (9 / 5)) + 32;
      print("$c°C = $f°F");
      print("");
      stdout.write("Do you want to perform another conversion? (y/n):");
    }
    else if (cho == 2) {
      stdout.write("Enter temperature in Fahrenheit : ");
      double f = double.parse(stdin.readLineSync()!);
      double c = (f - 32) * (5 / 9);
      print("$f°F = $c°C");
      print("");
      stdout.write("Do you want to perform another conversion? (y/n):");
    }
    else if (cho == 3) {
      stdout.write("Enter temperature in Celsius : ");
      double c = double.parse(stdin.readLineSync()!);
      double k = c + 273.15;
      print("$c°C = $k K");
      print("");
      stdout.write("Do you want to perform another conversion? (y/n):");
    }
    else if (cho == 4) {
      stdout.write("Enter temperature in Kelvin : ");
      double k = double.parse(stdin.readLineSync()!);
      double c = k - 273.15;
      print("$k K = $c°C");
      print("");
      stdout.write("Do you want to perform another conversion? (y/n):");
    }
    else if (cho == 5) {
      stdout.write("Enter temperature in Fahrenheit : ");
      double f = double.parse(stdin.readLineSync()!);
      double k = (f - 32) * (5 / 9) + 273.15;
      print("$f°F = $k K");
      print("");
      stdout.write("Do you want to perform another conversion? (y/n):");
    }
    else if (cho == 6) {
      stdout.write("Enter temperature in Kelvin : ");
      double k = double.parse(stdin.readLineSync()!);
      double f = (k - 273.15) * (9 / 5) + 32;
      print("$k K = $f°F");
      print("");
      stdout.write("Do you want to perform another conversion? (y/n):");
    }
    else if (cho == 7) {
      print("");
      print("====================================");
      print("     Thank You!");
      print("     Program Ended");
      print("====================================");
      exit(0);
    }
    y_n = stdin.readLineSync()!.toLowerCase();
  }while (y_n != "n");
  print("");
  print("====================================");
  print("     Thank You!");
  print("     Program Ended");
  print("====================================");
}