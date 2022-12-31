import 'package:flutter/cupertino.dart';

@immutable
class Person {
  final String name;
  final String lastName;
  final int age;
  final String nation;
  const Person(
      {required this.name,
      required this.lastName,
      required this.age,
      required this.nation});

  // immutable class variable value could be change in here inside the class but not outside.
  // Person clone() =>
  //     Person(name: name, lastName: lastName, age: age, nation: nation);

  Person copyWith({
    String? name,
    String? lastName,
    int? age,
    String? nation,
  }) {
    // you can give a new value otherwise it will take initial value.
    return Person(
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      age: age ?? this.age,
      nation: nation ?? this.nation,
    );
  }

  // shortest way clone variable much easily.
  Person clone() =>
      copyWith(name: name, lastName: lastName, age: age, nation: nation);
}


// instances.
Person person =
    const Person(name: 'Somnath', lastName: 'Das', age: 35, nation: 'India');

// to wright each and every property we can use clone() method it will shorter the code.

Person person1 = Person(
    name: person.name,
    lastName: person.lastName,
    age: person.age,
    nation: person.nation);

Person person2 = person.clone();

// cant be change the value of variables outside of immutable class like
// person.name= 'Somnath';
