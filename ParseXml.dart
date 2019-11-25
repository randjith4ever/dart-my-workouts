import 'package:xml/xml.dart' as xml;

void main() {
  print(
      """Before Running this file try running Upgrade dependencies with the pubspec.yaml
  
  Make sure the following content is available with properly indented as below
  <:::::::::> 
name: TestApp
version: 0.0.1
description: A simple console application.
dependencies: 
  xml: 3.5.0
  
  """);
  print("xml");
  var bookshelfXml = '''<?xml version = "1.0"?> 
   <bookshelf> 
      <book> 
         <title lang = "english">Growing a Language</title> 
         <price>29.99</price> 
      </book> 
      
      <book> 
         <title lang = "english">Learning XML</title> 
         <price>39.95</price> 
      </book> 
      <price>132.00</price> 
   </bookshelf>''';

  var document = xml.parse(bookshelfXml);
  print(document.toString());
}
