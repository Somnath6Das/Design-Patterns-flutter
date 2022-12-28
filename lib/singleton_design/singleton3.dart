class Singleton3 {
  static Singleton3? _instance;

  // default/generative privatized constructor
  Singleton3._internal() {
    print("Private constructor");
  }

  //factory method
  factory Singleton3() {
    _instance ??= Singleton3._internal();
    return _instance!;
  }
}
