class Singleton {
  static Singleton? _instances;
  // Privatized constructor allows instances run only once.
  Singleton._internal() {
    print('Private constructor ran');
  }
  static Singleton getInstances() {
    // _instances is not null return what I want.
    _instances ??= Singleton._internal();
    return _instances!;
  }
}

// instances of a class and it can not use outside of the file.
Singleton singleton0 = Singleton._internal();

Singleton singleton1 = Singleton.getInstances();






class Default {
  static Default? _instances;
  // Non privatized constructor allows instances run as per the instance number.
  Default() {
    print('Non Private constructor ran');
  }
  static Default getInstances() {
   return _instances!;
  }
}
