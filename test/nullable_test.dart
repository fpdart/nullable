import 'package:nullable/nullable.dart';
import 'package:test/test.dart';

void main() {
  String u1(String s1) => s1.toUpperCase();
  String u2(String s1, String s2) =>
      [s1, s2].map((_) => _.toUpperCase()).join();

  test('unary', () {
    expect('A', u1.nullable('a'));
    expect(null, u1.nullable(null));
  });

  test('binaary', () {
    expect('AB', u2.nullable('a', 'b'));
    expect(null, u2.nullable('a', null));
    expect(null, u2.nullable(null, 'b'));
  });
}

