class GreatestCommonDivisor {
  double numberA = 116;
  double numberB = 48;

  double greatestCommonDivisor() {
    double gcdA =
        numberA; //так как переменные перезапишутся после использования метода greatestCommonDivisor() то придется их положить в новую переменную
    double gcdB = numberB;
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
    double lcm = (numberA * numberB) / greatestCommonDivisor();
    return lcm;
  }

  void printMessage() {
    print('Число a = ${numberA.toInt()}\nЧисло b = ${numberB.toInt()}\n');
    print(
        'Наибольший общий делитель двух чисел = ${greatestCommonDivisor().toInt()}\n');
    print('Наименьшее общее кратное = ${lcm().toInt()}\n');
  }
}

//этот метод возвращает простые множители числа А
class LeastCommonMultiple extends GreatestCommonDivisor {
  void getSimpleNumberA() {
    double lcmA = numberA;
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
    double lcmB = numberB;
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

//этот метод создает экземпляры классов и их методы для вывода в консоль результатов
void runExercise1() {
  GreatestCommonDivisor greatestCommonDivisor = GreatestCommonDivisor();
  greatestCommonDivisor.greatestCommonDivisor();
  greatestCommonDivisor.lcm();
  greatestCommonDivisor.printMessage();
  LeastCommonMultiple leastCommonMultiple = LeastCommonMultiple();
  leastCommonMultiple.getSimpleNumberA();
  leastCommonMultiple.getSimpleNumberB();
}
