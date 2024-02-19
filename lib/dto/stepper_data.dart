import 'package:flutter/material.dart';

class StepperData {
  /// title for the stepper
  final StepperText? title;

  /// subtitle for the stepper
  final StepperText? subtitle;

  /// subtitle for the stepper
  final StepperText? secondSubtitle;

  final bool? isDashedBar;

  final Widget? iconWidget;

  final bool? makeMarginTop;

  final bool? isActive;

  /// Use the constructor of [StepperData] to pass the data needed.
  StepperData({
    this.iconWidget,
    this.title,
    this.subtitle,
    this.secondSubtitle,
    this.isDashedBar,
    this.makeMarginTop,
    this.isActive,
  });
}

class StepperText {
  /// text for the stepper
  final String text;

  /// textStyle for stepper
  final TextStyle? textStyle;

  StepperText(this.text, {this.textStyle});
}
