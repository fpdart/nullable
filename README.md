# Nullable setters in dart

```dart
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

var bar = Bar(null, 2, null, 'ww');
print([bar.a, bar.b, bar.c, bar.d]); // [null, 2, 3, 'ww']
```
