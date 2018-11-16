import 'package:nullable/nullable.dart';

class Foo {
  dynamic a;
  dynamic b;
  dynamic c;
  dynamic d;

  Foo(a, b, c, d) {
    this.a = nullable(a, () => 2);
    this.b = nullable(b, () => 3);
    this.c = nullablec(c) | 4;
    this.d = nullablec(d) | () => 5;
  }
}

class Bar {
  dynamic a;
  dynamic b;
  dynamic c;
  dynamic d;

  Bar(a, b, c, d) {
    setUnlessNull((_) => this.a = _, a);
    setUnlessNull((_) => this.b = _, b);
    setUnlessNull((_) => this.c = _, c, 3);
    setUnlessNull((_) => this.d = _, d, 'qq');
  }
}

main() {
  var foo = Foo(null, 2, null, 3);
  print([foo.a, foo.b, foo.c, foo.d]); // [2, 2, 4, 3]

  var bar = Bar(null, 2, null, 'ww');
  print([bar.a, bar.b, bar.c, bar.d]); // [null, 2, 3, 'ww']
}
