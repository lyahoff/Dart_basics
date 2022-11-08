import 'dart:math';

class GreatestCommonDivisorAndLeastCommonMultiple {
  int numberA = Random().nextInt(100);
  int numberB = Random().nextInt(100);
  void greatestCommonDivisor() {
    int gcd;
    print('НОД двух чисел:\n');
    print('Число a = $numberA\nЧисло b = $numberB');
    double leastCommonMultiple;
    int lcmA = numberA;
    int lcmB = numberB;
    if (numberA == 0) {
      gcd = numberB;
    } else {
      while (numberB != 0) {
        if (numberA > numberB) {
          numberA = numberA - numberB;
        } else {
          numberB = numberB - numberA;
        }
      }
      gcd = numberA;
    }

    leastCommonMultiple = (lcmA * lcmB) / gcd;

    print('НОД = $gcd');
    print('НОК = $leastCommonMultiple');
  }
}

void main() {
  GreatestCommonDivisorAndLeastCommonMultiple gcd =
      GreatestCommonDivisorAndLeastCommonMultiple();
  gcd.greatestCommonDivisor();
}
