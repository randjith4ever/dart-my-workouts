import 'dart:io';
import 'dart:async'; // used for writing operations

void main() {
  AsyncPrograms ap = new AsyncPrograms();
  ap.readingLine();
  ap.writeToFile();
}

class AsyncPrograms {
  AsyncPrograms() {}

  void readingLine() {
    print("Enter your name :");

    // prompt for user input
    String name =
        stdin.readLineSync(); // standard input stream from the dart io package

    // this is a synchronous method that reads user input
    print("Hello Mr. ${name}");
    print("#### READING LINE COMPLETED ####");
  }

  void writeToFile() {
    File file = new File(Directory.current.path + "\\data\\contact.txt");
    Future<String> f = file.readAsString();

    // returns a futrue, this is Async method
    f.then((data) => print(data));

    // once file is read , call back method is invoked
    print("End of main");
    // this get printed first, showing fileReading is non blocking or async
  }
}
