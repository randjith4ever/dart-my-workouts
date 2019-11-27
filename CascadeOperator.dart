class CascadeOperator {
  CascadeOperator() {
    print(
        """The cascade ( .. ) operator can be used to issue a sequence of calls via an object""");
  }

  void test_method() {
    int num = 50;
    print(
        "Here the int type can be Stringified using toString method: ${num.toString()}");
  }

  void test_method1() {
    print("This is a  test method1");
  }

  void test_method2() => print(
      "This is a test method2"); //Used to print single line statements primarily setters-getters

  void test_method3() {
    print("This is a  test method3");
  }
}

void main() {
  new CascadeOperator()
    ..test_method()
    ..test_method1()
    ..test_method1()
    ..test_method2()
    ..test_method3();
}
