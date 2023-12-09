/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_stream_stream_of_fibonacci_numbers_base.dart';

import 'dart:async';

/*
Practice Question 2: Stream of Fibonacci Numbers
Task:
Write a function fibonacciStream that takes an integer n and 
returns a Stream<int> emitting the first n Fibonacci numbers.
 */

Stream<int> fibonacciStream(int n) async* {
  if (n > 0) {
    yield 0;
  }
  if (n > 1) {
    yield 1;
  }

  int prev = 0, current = 1;
  for (int i = 3; i <= n; i++) {
    int next = prev + current;
    yield next;
    prev = current;
    current = next;
  }
}
