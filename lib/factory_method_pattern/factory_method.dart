// Dart Example
import 'dart:developer';

enum EmployeeType { programmer, hr, boss, error }

abstract class Employee {
  void work();
  // factory method pattern
  factory Employee(EmployeeType type) {
    switch (type) {
      case EmployeeType.programmer:
        return Programmer();
      case EmployeeType.hr:
        return HRManager();
      case EmployeeType.boss:
        return Boss();
      default:
        return Error();
    }
  }
}
//? Default constructor uses extends.
//? factory constructor uses implements.

class Programmer implements Employee {
  @override
  void work() {
    print('coding a app');
  }
}

class HRManager implements Employee {
  @override
  void work() {
    print("recruiting people");
  }
}

class Boss implements Employee {
  @override
  void work() {
    print("leading the people");
  }
}

class Error implements Employee {
  @override
  void work() {
    print("Nothing Match");
  }
}

// for longer code use this class
class FactoryMethod {
  static Employee getEmployee(String type) {
    switch (type) {
      case "programmer":
        return Programmer();
      case "hr":
        return HRManager();
      case "boss":
        return Boss();
      default:
        return Error();
    }
  }
}
