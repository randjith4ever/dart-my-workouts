typedef ManyOperation(int firstNo, int secondNo); //function signature
Add(int firstNo, int second) { // 4th Call: Invocation succesful after matching the signature
  print("Add result is ${firstNo + second}");
}

Subtract(int firstNo, int second) {
  print("Subtract result is ${firstNo - second}");
}

Divide(int firstNo, int second) {
  print("Divide result is ${firstNo / second}");
}

Product(int firstNo, int second){
  print("Product result is ${firstNo * second}");.
}

Calculator(int a, int b, ManyOperation oper) { // 2nd Call
  print("Inside calculator");
  oper(a, b); // 3rd Call: Invoke Function calls
}

void main() {
  Calculator(5, 5, Add); // 1st Call 
  Calculator(5, 5, Subtract);
  Calculator(5, 5, Product);
  Calculator(5, 5, Divide);

}
