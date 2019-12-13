import 'package:nullable/nullable.dart';

void main() {
  int.parse('12'); // 12
  int.parse(null); // Error: Invalid argument
  int.parse.nullable('12'); // 12
  int.parse.nullable(null); // null
}
