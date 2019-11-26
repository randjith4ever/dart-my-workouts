// import 'dart:io';
void main() {
  MethodOverride mo = new MethodOverride();
  mo.m1(12);
  print("Usage of super keyword: ${mo.supreme(100)}");
}

class Parent {
  void m1(int a) {
    print("value of a ${a}");
  }

  int supreme(int val) {
    return val;
  }
}

class MethodOverride extends Parent {
  @override
  void m1(int b) {
    print("value of b ${b}");
    super.m1(20);
  }

  int supreme(int val) {
    val += val;
    return val;
  }
}
