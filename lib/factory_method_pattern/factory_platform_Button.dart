import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class PlatformButton {
  Widget build(VoidCallback onPress, Widget child);

  factory PlatformButton(TargetPlatform platform) {
    switch (platform) {
      case TargetPlatform.android:
        return AndroidButton();
      case TargetPlatform.iOS:
        return IosButton();
      default:
        return AndroidButton();
    }
  }
}

class AndroidButton implements PlatformButton {
  @override
  Widget build(VoidCallback onPress, Widget child) {
    return ElevatedButton(
      onPressed: () {},
      child: child,
    );
  }
}

class IosButton implements PlatformButton {
  @override
  Widget build(VoidCallback onPress, Widget child) {
    return CupertinoButton.filled(
      child: child,
      onPressed: () {},
    );
  }
}
