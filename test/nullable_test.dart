import 'package:nullable/nullable.dart';
import 'package:test/test.dart';

void main() {
  test('Nullable', () {
    expect(nullable<int>(2), 2);
    expect(nullable(null), null);
    expect(nullable(null, () => 2), 2);
    expect((nullablec(null) | 3), 3);
    expect((nullablec(null) | () => 4), 4);
  });

  test('Setting if not null without default values', () {
    var withValue = 2;
    var withNull = null;

    setUnlessNull((_) => withValue = _, null);
    expect(withValue, 2);

    setUnlessNull((_) => withNull = _, 4);
    expect(withNull, 4);
  });

  test('Setting if not null with default values', () {
    var withValue = 2;
    var withNull = null;

    setUnlessNull((_) => withValue = _, null, 5);
    expect(withValue, 5);

    setUnlessNull((_) => withNull = _, 4, 'WWW');
    expect(withNull, 4);
  });
}
