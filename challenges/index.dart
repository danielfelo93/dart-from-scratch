import 'dart:io';
import 'dart:math';

class Challenge1 {
  void run() {
    print('Ingrese un número: ');
    int num = int.parse(stdin.readLineSync()!);
    if (num > 0)
      print('Positivo');
    else if (num < 0)
      print('Negativo');
    else
      print('Es cero');
  }
}

class Challenge2 {
  void run() {
    print('Ingrese el primer número: ');
    double num1 = double.parse(stdin.readLineSync()!);
    print('Ingrese el segundo número: ');
    double num2 = double.parse(stdin.readLineSync()!);
    print(
        'Suma: ${num1 + num2}\nResta: ${num1 - num2}\nMultiplicación: ${num1 * num2}\nDivisión: ${num1 / num2}');
  }
}

class Challenge3 {
  void run() {
    print('Ingrese el número: ');
    int numero = int.parse(stdin.readLineSync()!);
    print('El cuadrado de $numero es: ${numero * numero}');
  }
}

class Challenge4 {
  void run() {
    print('Ingrese el radio del circulo: ');
    double radio = double.parse(stdin.readLineSync()!);
    double area = pi * radio * radio;
    print('El área del circulo con radio $radio es: $area');
  }
}

class Challenge5 {
  void run() {
    print('Ingrese un número entre 1 y 7: ');
    int dia = int.parse(stdin.readLineSync()!);
    switch (dia) {
      case 1:
        print('Lunes');
        break;
      case 2:
        print('Martes');
        break;
      case 3:
        print('Miercoles');
        break;
      case 4:
        print('Jueves');
        break;
      case 5:
        print('Viernes');
        break;
      case 6:
        print('Sabado');
        break;
      case 7:
        print('Domingo');
        break;
      default:
        print('Número no válido');
        break;
    }
  }
}

class Challenge6 {
  void run() {
    print('Ingrese el precio del objeto: ');
    double precio = double.parse(stdin.readLineSync()!);
    double impuesto = precio * 20 / 100;
    print('El impuesto del 20% de $precio es: $impuesto');
  }
}

class Challenge7 {
  void run() {
    const indeterminado = "Indeterminado";
    print('Ingrese el primer número: ');
    double num1 = double.parse(stdin.readLineSync()!);
    print('Ingrese el segundo número: ');
    double num2 = double.parse(stdin.readLineSync()!);
    print('División: ${num2 != 0 ? num1 / num2 : indeterminado}');
  }
}

class Challenge8 {
  void run() {
    int sum = 0;
    for (int i = 1; i < 100; i++) {
      if (i % 2 != 0) {
        print('$i + ');
        sum = i + sum;
      }
    }
    print('= $sum');
  }
}

class Challenge9 {
  void run() {
    print('Ingrese el primer numerador: ');
    int num1 = int.parse(stdin.readLineSync()!);
    print('Ingrese el primer denominador: ');
    int den1 = int.parse(stdin.readLineSync()!);
    if (den1 == 0) {
      throw ArgumentError("El denominador no puede ser cero");
    }
    print('Ingrese el primer numerador: ');
    int num2 = int.parse(stdin.readLineSync()!);
    print('Ingrese el primer denominador: ');
    int den2 = int.parse(stdin.readLineSync()!);
    if (den2 == 0) {
      throw ArgumentError("El denominador no puede ser cero");
    }
    int newNum = num1 * den2 + num2 * den1;
    int newDen = den1 * den2;

    print(
        'La fracción resultante de sumar $num1/$den1 con $num2/$den2 es: $newNum/$newDen');
  }
}

class Challenge10 {
  void run() {
    print('Ingrese una palabra: ');
    String? input = stdin.readLineSync();

    if (input != null) {
      String reversed = input.split('').reversed.join('');
      print('La palabra invertida es: $reversed');
    } else {
      print('No se ingresó ninguna palabra.');
    }
  }
}

class Challenge11 {
  void run() {
    print('Ingrese el primer número: ');
    double num1 = double.parse(stdin.readLineSync()!);
    print('Ingrese el segundo número: ');
    double num2 = double.parse(stdin.readLineSync()!);
    print('Ingrese el tercer número: ');
    double num3 = double.parse(stdin.readLineSync()!);

    double result = (num1 + num2 + num3) / 3;
    print('El promedio de los tres números ingresados es: $result');
  }
}

class Challenge12 {
  void run() {
    List<int> numbers = [];

    for (int i = 1; i <= 5; i++) {
      print('Ingresa el número $i:');
      String? input = stdin.readLineSync();

      if (input != null) {
        int? number = int.tryParse(input);
        if (number != null) {
          numbers.add(number);
        } else {
          print('Por favor ingresa un número válido.');
          i--;
        }
      }
    }
    int maxNumber = numbers.reduce((a, b) => a > b ? a : b);
    print('El número más grande es: $maxNumber');
  }
}

class Challenge13 {
  void run() {
    print('Ingresa una palabra:');
    String? input = stdin.readLineSync();

    if (input != null) {
      String processedInput = input.toLowerCase().replaceAll(' ', '');
      String reversed = processedInput.split('').reversed.join('');

      if (processedInput == reversed) {
        print('La palabra "$input" es un palíndromo.');
      } else {
        print('La palabra "$input" no es un palíndromo.');
      }
    } else {
      print('No se ingresó ninguna palabra.');
    }
  }
}

class Challenge14 {
  void run() {
    print('Ingrese un número: ');
    double num = double.parse(stdin.readLineSync()!);

    if (num % 2 != 0) {
      print('$num es un número impar');
    } else {
      print('$num es un número par');
    }
  }
}

class Challenge15 {
  void run() {
    print('Ingrese el radio del circulo: ');
    double radio = double.parse(stdin.readLineSync()!);
    double area = pi * radio * radio;
    print('El área del circulo con radio $radio es: $area');
  }
}
