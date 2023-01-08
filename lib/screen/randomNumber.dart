import 'package:flutter/material.dart';

import '../const/color.dart';

class RandomNumber extends StatefulWidget {
  const RandomNumber({super.key});

  @override
  State<RandomNumber> createState() => _RandomNumberState();
}

class _RandomNumberState extends State<RandomNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: SafeArea(
        child: Padding(
          // symmetric 양옆, only 각각, ltbr 순서대로
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "랜덤숫자 생성기",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Icon(
                    Icons.settings,
                    color: RED_COLOR,
                  )
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [123, 456, 789]
                      .map(
                        (e) => Row(
                          children: e
                              .toString()
                              .split('')
                              .map(
                                (y) => Image.asset(
                                  'asset/img/randomNumber/$y.png',
                                  width: 50.0,
                                  height: 50.0,
                                ),
                              )
                              .toList(),
                        ),
                      )
                      .toList(),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: RED_COLOR,
                  ),
                  onPressed: () {},
                  child: Text("button"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
