import 'package:first_codefactory/const/color.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  double maxNumber = 1000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: maxNumber
                    .toInt()
                    .toString()
                    .split('')
                    .map((e) => Image.asset(
                          'asset/img/randomNumber/$e.png',
                          width: 50.0,
                          height: 50.0,
                        ))
                    .toList(),
              ),
            ),
            Slider(
              value: maxNumber,
              min: 1000,
              max: 100000,
              onChanged: (double val) {
                setState(() {
                  maxNumber = val;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: RED_COLOR,
              ),
              child: Text("저장!"),
            )
          ],
        ),
      ),
    );
  }
}
