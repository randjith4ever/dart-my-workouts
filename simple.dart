import 'dart:ffi';

void main() {
  TestClass tc = new TestClass();
  tc.disp();
  tc.demoConstants();
  tc.typeTest();
  tc.assignmentOper();
  tc.looping();
}

class TestClass {
  void disp() {
    var n = "hello";
    print(n);
  }

  // looping
  void looping() {
    for (var temp, i = 0, j = 1; j < 30; temp = i, i = j, j = i + temp) {
      print('${j}');
      print(j);
    }
  }

// Operators
  void assignmentOper() {
    var a = 10;
    var b = 30;

    var empty = null;
    var valued = 20;

    empty ??= 1000;
    valued ??= 1000;

    print("Assigned values to null identifier: ${empty}");
    print("Values not assigned to preassigned Identifiers: ${valued}");

    a += b;
    print("a+=b : ${a}");

    a = 12;
    b = 13;
    a -= b;
    print("a-=b : ${a}");

    a = 12;
    b = 13;
    a *= b;
    print("a*=b : ${a}");

    double num1 = 10;
    double num2 = 2;
    num1 /= num2;
    print("a/=b : ${num1}");

    a = 12;
    a %= b;
    print("a%=b : ${a}");
    print(
        'Logical operators are same as Known in ancient languages (&&, ||, !) ');
  }

  void typeTest() {
    //operator
    int n = 2;
    print(n is int);
    print(n is! int);
    print("Bitwise operators are same as Known ancient languages");
  }

  void arithmetic() {
    int a = 5;
    int b = 6;

    int sum = a + b;
    int sub = a - b;
    int mul = a * b;
    double div = a / b;

    int idiv = a ~/ b;

    int rem = a % b;
    int v1 = sum++;
    int v2 = ++sub;
    int v3 = mul--;
    int v4 = --idiv;
  }

  void demoConstants() {
    const pi = 3.14; // used only for compile time constants

    final goldenRatio = 1.618; // Initializer is a must for the final variables

    const area = pi * 12 * 12; // can be used only for compile time constants
    print("The output is ${area}");
    print("The golden ratio value is ${goldenRatio}");

    var drops = 20.3;
    var temp = 22.5;
    final cloud = drops;
    // const cels = temp; // Compile-time error: general variables cannot be assigned in constants but can be done in final
  }
}

/*
The Dart language supports the following types−

Numbers: Int, double
Strings: String
Booleans: bool
Lists and Maps: List, Map
Dynamic: dynamic
 */

/* DART KEYWORDS

abstract 1	continue	false	new	this
as 1	default	final	null	throw
assert	deferred 1	finally	operator 1	true
async 2	do	for	part 1	try
async* 2	dynamic 1	get 1	rethrow	typedef 1
await 2	else	if	return	var
break	enum	implements 1	set 1	void
case	export 1	import 1	static 1	while
catch	external 1	in	super	with
class	extends	is	switch	yield 2
const	factory 1	library 1	sync* 2	yield* 2

 */
