# Nullable extension on functions

This extension introduces the `nullable` version of functions. The nullable version returns
null on null input and calls the underlying function otherwise. 
```dart
void main() {
  int.parse('12'); // 12
  int.parse(null); // Error: Invalid argument
  int.parse.nullable('12'); // 12
  int.parse.nullable(null); // null
}
```
