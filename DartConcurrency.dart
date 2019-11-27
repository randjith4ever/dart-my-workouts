import 'dart:isolate';

void main() {
  print(
      """Concurrency is the execution of several instruction sequences at the same time. 
      It involves performing more than one task simultaneously.""");

  Isolate.spawn(foo, 'Hello!!');
  Isolate.spawn(foo, 'Greetings!!');
  Isolate.spawn(foo, 'Welcome!!');

  print('execution from main1');
  print('execution from main2');
  print('execution from main3');

  DartConcurrency dartConcurrency = new DartConcurrency();
}

void foo(var message) {
  print('execution from foo ... the message is :${message}');
}

class DartConcurrency {
  DartConcurrency() {}
}
