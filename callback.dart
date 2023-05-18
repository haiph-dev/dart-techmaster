test(String a, String b,
    {required Function(double) done, Function(String)? fail}) {
  try {
    int x = int.parse(a);
    int y = int.parse(b);

    double result = x / y;
    done(result);
  } catch (e) {
    fail!(e.toString());
  }
}

void printResult(double result) {
  print('result: $result');
}

void printException(String exp) {
  print('exception: $exp');
}

void main() {
  test(
    'a',
    '0',
    done: (p0) => printResult(p0),
    fail: (p0) => printException(p0),
  );
}
