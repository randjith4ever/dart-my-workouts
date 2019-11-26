void main() {
  LearnExceptions expect = new LearnExceptions();
  expect.tryOnExceptions();
  expect.tryCatchExceptions();
  expect.tryOnCatchExceptions();
  expect.tryCatchFinallyExceptions();
  expect.throwingExceptions();

  expect.customException();
}

class LearnExceptions {
  LearnExceptions() {
    print("""
      DeferredLoadException: Thrown when a deferred library fails to load.
      
      FormatException: Exception thrown when a string or some other data does not have an expected format and cannot be parsed or processed.
      
      IntegerDivisionByZeroException: Thrown when a number is divided by zero.
       
      IOException: Base class for all Inupt-Output related exceptions.
      
      IsolateSpawnException: Thrown when an isolate cannot be created.
      
      Timeout: Thrown when a scheduled timeout happens while waiting for an async result.
      ********************************************************************************************""");

    print(
        """The try block embeds code that might possibly result in an exception. 
        The on block is used when the exception type needs to be specified. 
        The catch block is used when the handler needs the exception object.
        The finally block includes code that should be executed irrespective of an exception’s occurrence. The optional finally block executes unconditionally after try/on/catch.
        The throw keyword is used to explicitly raise an exception. A raised exception should be handled to prevent the program from exiting abruptly.
        
        Dart enables creating custom exceptions by extending the existing ones. 
              SYNTAX: class Custom_exception_Name implements Exception
        ******************************************************************************************""");
  }

  void tryOnExceptions() {
    int x = 12;
    int y = 0;
    int res;
    print("Exception example with Try and on blocks.....");

    try {
      res = x ~/ y;
    } on IntegerDivisionByZeroException {
      print('Cannot divide by zero');
    }
  }

  void tryCatchExceptions() {
    int x = 12;
    int y = 0;
    int res;

    print("Exception example with Try and catch blocks.....");

    try {
      res = x ~/ y;
    } catch (e) {
      print(e);
    }
  }

  void tryOnCatchExceptions() {
    int x = 12;
    int y = 0;
    int res;

    print("Exception example with Try, on and catch blocks.....");

    try {
      res = x ~/ y;
    } on IntegerDivisionByZeroException catch (e) {
      print(e);
    }
  }

  void tryCatchFinallyExceptions() {
    int x = 12;
    int y = 0;
    int res;

    print("Exception example with Try, on, catch and finally blocks.....");

    try {
      res = x ~/ y;
    } on IntegerDivisionByZeroException catch (e) {
      print(e);
    } finally {
      print('Ending OF try block requested operation!!!');
    }
  }

  void throwingExceptions() {
    print("Exception example with throw enclosed with try catch blocks.....");
    try {
      test_age(-2);
    } catch (e) {
      print('Age cannot be negative');
    }
  }

  void test_age(int age) {
    if (age < 0) {
      throw new FormatException();
    }
  }

  void customException() {
    print(
        "Printing Custom Exception example with throw enclosed with try catch blocks.....");

    try {
      withdraw_amt(-1);
    } catch (e) {
      print(e.errMsg());
    } finally {
      print('Ending requested operation.....');
    }
  }

  void withdraw_amt(int amt) {
    if (amt <= 0) {
      throw new AmountException();
    }
  }
}

class AmountException implements Exception {
  String errMsg() => 'Msg from Custom Exception: Amount should be greater than zero';
}
