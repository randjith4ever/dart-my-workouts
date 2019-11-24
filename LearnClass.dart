import 'learninterfaces.dart';

void main() {
  print("""
  class class_name {  
   <fields> 
   <getters/setters> 
   <constructors> 
   <functions> 
}
  """);

  LearnClass lc1 = new LearnClass();
  LearnClass lc2 = new LearnClass.one("Ferrari");
  LearnClass lc3 = new LearnClass.overload(
      "Aston Martin", "Rolls Royce"); //constructor overloading
}

class LearnClass {
  LearnClass() {
    print('Constructor Overloading: Non-parameterized constructor');
  }
  LearnClass.one(String engine) {
    print(engine);
  }
  LearnClass.overload(String engine, String transmission) {
    print(engine);
    print(transmission);
  }
}
