import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<StepperData> stepperData = [
    StepperData(
        title: StepperText(
          "Osama Mohamed Morsy",
          textStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
        subtitle: StepperText("Project Manager"),
        secondSubtitle: StepperText("11 may 2024"),
        isDashedBar: false,
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Color(0xFF374761),
              borderRadius: BorderRadius.all(Radius.circular(30))),
        )),
    StepperData(
        title: StepperText(
          "Osama Mohamed Morsy",
          textStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
        subtitle: StepperText("Project Manager"),
        secondSubtitle: StepperText("11 may 2024"),
        isDashedBar: false,
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Color(0xFF374761),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Icon(Icons.check, color: Colors.white),
        )),
    StepperData(
        title: StepperText(
          "Osama Mohamed Morsy",
          textStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
        subtitle: StepperText("Project Manager"),
        secondSubtitle: StepperText("11 may 2024"),
        isDashedBar: false,
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Color(0xFF374761),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Icon(Icons.check, color: Colors.white),
        )),
    StepperData(
        title: StepperText(
          "Osama Mohamed Morsy",
          textStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
        subtitle: StepperText("Project Manager"),
        secondSubtitle: StepperText("11 may 2024"),
        isDashedBar: true,
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(30)),
            border: Border.all(
              color: Color(0xFF374761),
              // You can specify the color you want for the border
              width: 2, // You can adjust the width of the border
            ),
          ),
        )),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: AnotherStepper(
                stepperList: stepperData,
                stepperDirection: Axis.vertical,
                iconWidth: 40,
                iconHeight: 40,
                activeBarColor: Color(0xFF374761),
                inActiveBarColor: Colors.grey,
                inverted: false,
                verticalGap: 50,
                activeIndex: 1,
                barThickness: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
