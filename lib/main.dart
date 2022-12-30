import 'package:design_patterns/abstract_factory/abstract_factory.dart';
import 'package:design_patterns/abstract_factory/abstract_factory_static.dart';
import 'package:design_patterns/abstract_factory/alternative_abstract_factory.dart';
import 'package:design_patterns/factory_method_pattern/factory_Platform_Button.dart';
import 'package:design_patterns/factory_method_pattern/factory_method.dart';
import 'package:design_patterns/singleton_design/singleton.dart';
import 'package:design_patterns/singleton_design/singleton2.dart';
import 'package:design_patterns/singleton_design/singleton3.dart';
import 'package:flutter/material.dart';

void main() {
  Employee employee = Employee(EmployeeType.boss);
  employee.work();
  Employee employeeFac = FactoryMethod.getEmployee('boss');
  //override the value
  employeeFac = Programmer();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // all instances will run only once.
    Singleton singleton2 = Singleton.getInstances();
    Singleton singleton3 = Singleton.getInstances();
    Singleton singleton4 = Singleton.getInstances();

    // these instances will run three times.
    Default default1 = Default();
    Default default2 = Default();
    Default default3 = Default();

    //deferent way with static methods.
    Singleton2 singleton5 = Singleton2.instance;
    Singleton2 singleton6 = Singleton2.instance;
    Singleton2 singleton7 = Singleton2.instance;


    //factory method
    Singleton3 singleton8 = Singleton3();
    Singleton3 singleton9 = Singleton3();
    Singleton3 singleton10 = Singleton3();
    Singleton3 singleton11 = Singleton3();

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // factory method pattern
                PlatformButton(Theme.of(context).platform).build(() {
                  print('android button');
                }, const Text('click')),

                // abstract factory
                AbstractFactoryImplementation()
                    .buildButton(context, 'Hello', () {}),
                const SizedBox(height: 10),
                AbstractFactoryImplementation().buildIndicator(context),

                // alternative abstract factory
                AlternativeAbstractFactory.buildButton(context, 'Hi', () {}),
                const SizedBox(height: 10),
                AlternativeAbstractFactory.buildIndicator(context),

                // abstract factory static run only one time
                AbstractFactoryImple.instance.buildIndicator(context),
                AbstractFactoryImple.instance.buildButton(context, 'static', (){}),
              ],
            ),
          ),
        ));
  }
}
