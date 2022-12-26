import 'package:design_patterns/abstract_factory/abstract_factory.dart';
import 'package:design_patterns/abstract_factory/alternative_abstract_factory.dart';
import 'package:design_patterns/factory_method_pattern/factory_Platform_Button.dart';
import 'package:design_patterns/factory_method_pattern/factory_method.dart';
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
                AbstractFactoryImplementation().buildButton(context, 'Hello', () { }),
                const SizedBox(height: 10),
                AbstractFactoryImplementation().buildIndicator(context),

                // alternative abstract factory
                AlternativeAbstractFactory.buildButton(context, 'Hi', () { }),
                const SizedBox(height: 10),
                AlternativeAbstractFactory.buildIndicator(context),

              ],
            ),
          ),
        ));
  }
}
