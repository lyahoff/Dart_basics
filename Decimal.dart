import 'dart:io';

int getUserNumber() {
  print('Введите целое число');
  int userInt = int.parse(stdin.readLineSync() ?? '0');
  return userInt;
}

void toBinary(int a) {
  List decimals = [];
  if (a == 0) {
    print(a);
  }
  while (a != 0) {
    if (a % 2 == 0) {
      decimals.add(0);
      a = a ~/ 2;
    }
    if (a % 2 == 1) {
      decimals.add(1);
      a = a ~/ 2;
    }
  }

  print(decimals.reversed.join());
}

void getBinaryList() {
  List userBinaryNumber = [];
  List<int> decimal = [];
  int degree = 1;
  int factor = 2;
  int sum = 0;

  print('Введите двоичное число');

  String userNumber = stdin.readLineSync() ?? '0';

  if (userNumber.isEmpty) {
    print('Вы не ввели число');
  }

  for (int i = 0; i < userNumber.length; i++) {
    userBinaryNumber.add(userNumber[i]);
  }

  for (int i = userBinaryNumber.length - 1; i >= 0; i--) {
    if (userBinaryNumber[i] == '1') {
      decimal.add(1);
    } else {
      decimal.add(0);
    }
  }

  for (int i = 0; i < decimal.length; i++) {
    if (decimal[i] == 1) {
      sum = sum + degree;
      degree *= factor;
    } else {
      degree *= factor;
    }
  }
  print(sum);
}

void main(List<String> args) {
  while (true) {
    toBinary(getUserNumber());
    getBinaryList();
  }
}
