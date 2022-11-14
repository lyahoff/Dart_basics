import 'dart:io';

//для начала нам надо попросить у пользователя два числа

//число А
double numberA() {
  print('Введите число А');
  double numberA = double.parse(stdin.readLineSync() ?? '0.0');
  return numberA;
}

//число В
double numberB() {
  print('Введите число B');
  double numberB = double.parse(stdin.readLineSync() ?? '0.0');
  return numberB;
}

//в этом классе будут основные методы НОД и НОК
class GreatestCommonDivisor {
  double a = numberA();
  double b = numberB();

//метод получения НОД
  double greatestCommonDivisor() {
    //так как переменные а и b перезапишутся после использования метода greatestCommonDivisor() то придется их положить в новую переменную
    double gcdA = a;
    double gcdB = b;
    double gcd; //в эту переменную я положу наибольший общий делитель
//тут представлена формула Эвклида -- из большего числа вычитается меньшее, пока одно из чисел не становится равным 0
    if (gcdA == 0) {
      gcd = gcdB;
    } else {
      while (gcdB != 0) {
        if (gcdA > gcdB) {
          gcdA = gcdA - gcdB;
        } else {
          gcdB = gcdB - gcdA;
        }
      }
      gcd = gcdA;
    }
    return gcd;
  }

//этот метод возвращает НОК для двух чисел
  double lcm() {
    double lcm = (a * b) / greatestCommonDivisor();
    return lcm;
  }

// этот метод нужен для вывода в консоль результатов НОД и НОК
  void printMessage() {
    print(
        'Наибольший общий делитель двух чисел = ${greatestCommonDivisor().toInt()}\n');
    print('Наименьшее общее кратное = ${lcm().toInt()}\n');
  }

//этот метод возвращает простые множители числа А
  void getSimpleNumberA() {
    double lcmA = a;
    int divisor = 2;
    List allDividers = [];
    while (lcmA != 1) {
      while (lcmA % divisor == 0) {
        allDividers.add(divisor);
        lcmA /= divisor;
      }
      divisor += 1;
    }
    if (allDividers.length == 1) {
      allDividers.add(1);
      allDividers.sort();
    }
    print('Простые множители числа a = $allDividers');
  }

//этот метод возвращает простые множители числа B
  void getSimpleNumberB() {
    double lcmB = b;
    int divisor = 2;
    List allDividers = [];
    while (lcmB != 1) {
      while (lcmB % divisor == 0) {
        allDividers.add(divisor);
        lcmB /= divisor;
      }
      divisor += 1;
    }
    if (allDividers.length == 1) {
      allDividers.add(1);
      allDividers.sort();
    }
    print('Простые множители числа b = $allDividers');
  }
}

void runExercise1() {
  GreatestCommonDivisor greatestCommonDivisor = GreatestCommonDivisor();
  greatestCommonDivisor.greatestCommonDivisor();
  greatestCommonDivisor.lcm();
  greatestCommonDivisor.printMessage();
  greatestCommonDivisor.getSimpleNumberA();
  greatestCommonDivisor.getSimpleNumberB();
}
