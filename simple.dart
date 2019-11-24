import 'dart:ffi';

void main() {
  TestClass tc = new TestClass();

  print("Choose a menu from the following....");
  tc.disp();
  int n = 12;
  switch (n) {
    case 1:
      print('Executing demo constants');
      tc.demoConstants();
      break;
    case 2:
      print('Executing demo Identifying type');
      tc.typeTest();
      break;
    case 3:
      print('Executing demo assignment operators');
      tc.assignmentOper();
      break;
    case 4:
      print('Executing demo looping statements');
      tc.looping();
      break;
    case 5:
      print("Executing demo number data type's properties");
      tc.numberProperties();
      break;
    case 6:
      print('Executing demo methods in number type');
      tc.numberMethods();
      break;
    case 7:
      print('Executing demo types defining strings');
      tc.stringTypes();
      break;
    case 8:
      print('Executing demo Interpolating strings');
      tc.stringInterpolation();
      break;
    case 9:
      print('Executing demo Properties in strings');
      tc.stringProperties();
      break;
    case 10:
      print('Executing demo Manipulation of strings');
      tc.stringManipulation();
      break;
    case 11:
      print('Executing demo Manipulation of strings');
      tc.booleanTypes();
      break;
    case 12:
      print('Executing list: Working with Lists');
      tc.workingWithLists();
      break;
    default:
      print(
          "Choose from the given option otherwise try executing different file");
  }
}

class TestClass {
  void disp() {
    var n = "Developed and Executed under Dart VM 2.5.0 ";
    print(n);
  }

  void workingWithLists() {
    var listNames = new List();
    listNames.add("one");
    listNames.add("two");
    listNames.add("three");
    listNames.add("four");
    listNames.add("five");

    print("Length: : ${listNames.length}");

    var fixedLs = [1,20,5];
    print("fixedLs: ${listNames}");
    listNames.addAll(fixedLs);
    print("Appended list entries: ${listNames}");
  }

  void booleanTypes() {
    print("Returns true if the given expression is logically true ${5 < 2}");
  }

  void stringManipulation() {
    print(
        "This contains same set of string methods as in Java. The observed difference is split method will return list instead of an array and we have codeAt instead of codePointAt for returning ascii entries");
  }

  void stringProperties() {
    String str = "Hello";
    print(
        "Returns a list of the UTF-16 code units of a given string: ${str.codeUnits}");
    print('Returns true if this string is empty: ${str.isEmpty}');
    print(
        'Returns the length of the string including space, tab and newline characters: ${str.length}');
  }

  void stringInterpolation() {
    String str1 = "hello";
    String str2 = "world";
    String res = str1 + str2;

    int n = 1 + 1;

    String str3 = "The sum of 1 and 1 is ${n}";
    print(str3);

    String str4 = "The sum of 2 and 2 is ${2 + 2}";
    print(str4);

    print("The concatenated string : ${res}");
  }

  void stringTypes() {
    String str1 = 'this is a single line string';
    String str2 = "this is a single line string";
    String str3 = '''this is a multiline line string''';
    String str4 = """this is a multiline line string""";

    print(str1);
    print(str2);
    print(str3);
    print(str4);
    print(".......String Interpolation.......");
    String out = str1 + str2;
    print(out);
  }

  // Number Methods

  void numberMethods() {
    int n1 = -2;
    double n2 = 2.9;
    int n3 = 5;
    double n4 = 2.9;
    int n5 = -1;
    int n6 = 0;
    double n7 = 5.2;

    print('Returns absolute value of the number: ${n1.abs()}');
    print('Returns the least integer no smaller than the number: ${n2.ceil()}');
    print(
        'Compares two numbers 0 for equal, 1 if object > givenNum(n3), -1 if object is < givenNum(n3) : ${n3.compareTo(12)}');
    print(
        'Returns the greatest integer not greater than the current number: ${n4.floor()}');

    print(
        'Returns the truncated remainder after dividing the two numbers: ${n3.remainder(2)}');
    print(
        'Returns the integer closest to the current numbers[Rounding Of] : ${n4.round()}');
    print('Returns the double equivalent of the number: ${n3.toDouble()}');

    print(
        'Returns the least integer no smaller than the number[float value trucated]: ${n4.toInt()}');
    print(
        'Returns the integer closest to the current numbers: ${n3.toString()}');
    print(
        'Returns the double equivalent of the number (truncates the entire fractions..): ${n4.truncate()}');
  }

// number properties

  void numberProperties() {
    int n = 5000;
    int n1 = -1;
    int n2 = 0;
    double n3 = 5.2;

    print('returns hash code: ${n.hashCode}');
    print('returns true for finite; otherwise, false: ${n.isFinite}');
    print('returns true for double not a numberValue: ${n3.isNaN}');
    print('returns true for negative: ${n1.isNegative}');
    print(
        'Returns minus one, zero or plus one depending on the sign and numerical value of the number: ${n1.sign}'); //
    print('Returns true if the number is an even number: ${n.isEven}');
    print('Returns true if the number is an Odd number: ${n2.isOdd}');
  }

  // parsing Numbers

  void parsingNumbers() {
    // parsing from String to number
    print(num.parse('12'));
    print(num.parse('10.91'));
  }

// conditional statements

  void conditionalStmts() {
    print('If, if else, else-if ladder, nested if and switch case');
  }

  // looping
  void looping() {
    for (var temp, i = 0, j = 1; j < 30; temp = i, i = j, j = i + temp) {
      print('${j}');
      print(j);
    }
    conditionalStmts();
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
