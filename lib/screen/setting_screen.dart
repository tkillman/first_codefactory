import 'package:first_codefactory/component/numberRow.dart';
import 'package:first_codefactory/const/color.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  int maxNumber = 1000;
  SettingScreen({required this.maxNumber, super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  int maxNumber = 1000;

  @override
  void initState() {
    super.initState();
    maxNumber = widget.maxNumber;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _Body(maxNumber: maxNumber),
            _Footer(
              maxNumber: maxNumber,
              onChanged: onSliderChanged,
              onPressed: onButtonPressed,
            )
          ],
        ),
      ),
    );
  }

  onSliderChanged(double val) {
    print("onSliderChanged" + val.toString());
    setState(() {
      maxNumber = val.toInt();
    });
  }

  onButtonPressed() {
    Navigator.of(context).pop<int>(maxNumber.toInt());
  }
}

class _Footer extends StatelessWidget {
  ValueChanged<double> onChanged;
  VoidCallback onPressed;

  _Footer({
    super.key,
    required this.maxNumber,
    required this.onChanged,
    required this.onPressed,
  });

  final int maxNumber;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Slider(
          value: maxNumber.toDouble(),
          min: 1000,
          max: 100000,
          onChanged: onChanged,
        ),
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: RED_COLOR,
          ),
          child: Text("저장!"),
        )
      ],
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    super.key,
    required this.maxNumber,
  });

  final int maxNumber;

  @override
  Widget build(BuildContext context) {
    return Expanded(child: NumberRow(number: maxNumber));
  }
}
