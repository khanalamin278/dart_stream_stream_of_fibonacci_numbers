import 'package:dart_stream_stream_of_fibonacci_numbers/dart_stream_stream_of_fibonacci_numbers.dart';
import 'package:test/test.dart';

void main() {
  test('fibonacciStream generates the first n Fibonacci numbers', () async {
    var fibStream = fibonacciStream(5);
    expect(await fibStream.toList(), equals([0, 1, 1, 2, 3]));
  });

  test('fibonacciStream handles n = 0', () async {
    var fibStream = fibonacciStream(0);
    expect(await fibStream.toList(), isEmpty);
  });

  test('fibonacciStream handles n = 1', () async {
    var fibStream = fibonacciStream(1);
    expect(await fibStream.toList(), equals([0]));
  });
}
