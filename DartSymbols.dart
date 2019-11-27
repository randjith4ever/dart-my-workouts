import 'dart:core';
import 'dart:mirrors';
import 'Scoop.dart';

void main() {
  print(
      """Symbols in Dart are opaque, dynamic string name used in reflecting out metadata from a library. 
      Simply put, symbols are a way to store the relationship between a human readable string and a string that is optimized to be used by computers.""");

  Symbol lib = new Symbol("scoop_lib");
  //library name stored as Symbol

  Symbol clsToSearch = new Symbol("Scoop");
  // class name stored as Symbol

  if (checkIf_classAvailableInlibrary(lib, clsToSearch)) {
    // searches Foo class in foo_lib library
    print("Class Found...");
  } else {
    print("Class Not Found...");
  }
}

bool checkIf_classAvailableInlibrary(Symbol libraryName, Symbol className) {
  MirrorSystem mirrorSystem = currentMirrorSystem();
  LibraryMirror libMirror = mirrorSystem.findLibrary(libraryName);

  if (libMirror != null) {
    print("Found Library");
    print("checkng...class details..");
    print("No of classes found is : ${libMirror.declarations.length}");
    libMirror.declarations.forEach((s, d) => print(s));

    if (libMirror.declarations.containsKey(className)) return true;
    return false;
  }
}
