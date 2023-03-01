import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_tests/person.dart';

void main() {
  test('Test Person Data', () {
    //setup
    Person personOne = Person(name: "Guilherme", age: 19);
    Person personTwo = Person(name: "Souza", age: 19);

    //do
    bool isEquals = personOne == personTwo;
    debugPrint("$isEquals");
    //check

    expect(isEquals, false);
  });

  test('Test Person hashCode', () {
    //setup
    Person personOne = Person(name: "Guilherme", age: 19);
    Person personTwo = Person(name: "Guilherme", age: 19);

    //do
    bool isEquals = personOne.hashCode == personTwo.hashCode;
    debugPrint("$isEquals");
    //check

    expect(isEquals, true);
  });
}
