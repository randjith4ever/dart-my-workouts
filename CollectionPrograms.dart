import 'dart:collection';

class CollectionPrograms {
  void listsDemo() {
    List logTypes = new List();
    logTypes.add("WARNING");
    logTypes.add("ERROR");
    logTypes.add("INFO");

    // iterating across list
    for (String type in logTypes) {
      print(type);
    }

    // printing size of the list
    print(logTypes.length);
    logTypes.remove("WARNING");

    print("size after removing.");
    print(logTypes.length);
  }

  void setsDemo() {
    Set numberSet = new Set();
    numberSet.add(100);
    numberSet.add(20);
    numberSet.add(5);
    numberSet.add(60);
    numberSet.add(70);
    print("Default implementation :${numberSet.runtimeType}");

    // all elements are retrieved in the order in which they are inserted
    for (var no in numberSet) {
      print(no);
    }
  }

  void mapsDemo() {
    var details = new Map();
    details['Username'] = 'admin60';
    details['Password'] = 'admin@123';
    details['otp'] = 'AXOAOTIOT';
    print(details);
  }

  void queueDemo() {
    print("Entries can be added on both sides...");
    Queue queue = new Queue();
    print("Default implementation ${queue.runtimeType}");
    queue.add(10);
    queue.add(20);
    queue.add(30);
    queue.add(40); // Observe addFirst, addLast methods..

    for (var no in queue) {
      print(no);
    }
  }

  void queueIterator() {
    print('Iterating with Queue...');
    Queue numQ = new Queue();
    numQ.addAll([100, 200, 300]);
    Iterator i = numQ.iterator;

    while (i.moveNext()) { // This is similar to hasNext method in java
      print(i.current);
    }
  }
}

void main() {
  CollectionPrograms cp = new CollectionPrograms();
  cp.listsDemo();
  cp.setsDemo();
  cp.mapsDemo();
  cp.queueDemo();
  cp.queueIterator();
}
