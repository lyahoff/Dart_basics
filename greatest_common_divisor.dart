void greatestCommonDivisor(int a, int b) {
  if (a == 0) {
    print(b);
  } else {
    while (b != 0) {
      if (a > b) {
        a = a - b;
      } else {
        b = b - a;
      }
    }
    print(a);
  }
}
