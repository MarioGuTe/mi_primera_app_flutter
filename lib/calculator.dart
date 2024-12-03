import 'dart:io';

void main() {
  while (true) {
    print("\n--- Calculadora ---");
    print("1: Suma");
    print("2: Resta");
    print("3: Multiplicación");
    print("4: División");
    print("5: Salir");

    stdout.write("Ingresa la operación deseada (1-5): ");
    String? opcionInput = stdin.readLineSync();
    int? opcion = int.tryParse(opcionInput!);

    if (opcion == null || opcion < 1 || opcion > 5) {
      print("Opción no válida, intenta de nuevo.");
      continue;
    }

    if (opcion == 5) {
      print("Saliendo del programa. ¡Adiós!");
      break;
    }

    stdout.write("Ingresa el primer número: ");
    String? num1Input = stdin.readLineSync();
    double? num1 = double.tryParse(num1Input!);

    if (num1 == null) {
      print("Número inválido, intenta de nuevo.");
      continue;
    }

    stdout.write("Ingresa el segundo número: ");
    String? num2Input = stdin.readLineSync();
    double? num2 = double.tryParse(num2Input!);

    if (num2 == null) {
      print("Número inválido, intenta de nuevo.");
      continue;
    }

    double resultado;

    switch (opcion) {
      case 1:
        resultado = num1 + num2;
        print("Resultado de la suma: $resultado");
        break;
      case 2:
        resultado = num1 - num2;
        print("Resultado de la resta: $resultado");
        break;
      case 3:
        resultado = num1 * num2;
        print("Resultado de la multiplicación: $resultado");
        break;
      case 4:
        if (num2 == 0) {
          print("No se puede dividir por cero.");
        } else {
          resultado = num1 / num2;
          print("Resultado de la división: $resultado");
        }
        break;
      default:
        print("Opción no válida.");
    }
  }
}
