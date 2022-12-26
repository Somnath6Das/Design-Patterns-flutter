import 'package:design_patterns/abstract_factory/platform_indicator.dart';
import 'package:design_patterns/factory_method_pattern/factory_platform_Button.dart';
import 'package:flutter/material.dart';

abstract class AbstractFactory {
  Widget buildButton(BuildContext context, String text, VoidCallback onPressed);
  Widget buildIndicator(BuildContext context);
}

class AbstractFactoryImplementation implements AbstractFactory {
  @override
  Widget buildButton(
      BuildContext context, String text, VoidCallback onPressed) {
    return PlatformButton(Theme.of(context).platform)
        // .build function convert button type to widget type.
        .build(onPressed, Text(text));
  }

  @override
  Widget buildIndicator(BuildContext context) {
    return PlatformIndicator(Theme.of(context).platform).build();
  }
}
