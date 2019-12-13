import 'package:nullable/nullable.dart';
import 'package:test/test.dart';

void main() {
  String u(String s) => s.toUpperCase();

  test('unary function', () {
    expect('A', u.nullable('a'));
    expect(null, u.nullable(null));
  });
}
