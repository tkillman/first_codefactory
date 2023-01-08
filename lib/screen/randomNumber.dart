import 'dart:math';

import 'package:flutter/material.dart';

import '../const/color.dart';

class RandomNumber extends StatefulWidget {
  const RandomNumber({super.key});

  @override
  State<RandomNumber> createState() => _RandomNumberState();
}

class _RandomNumberState extends State<RandomNumber> {
  List<int> randomNumbers = [123, 456, 789];

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
              const _Header(),
              _Body(randomNumbers: randomNumbers),
              _Footer(
                onPressed: onCreateRandomNumbers,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onCreateRandomNumbers() {
    final r = Random();
    Set<int> newRandomNumbers = {};

    while (newRandomNumbers.length != 3) {
      final newNumber = r.nextInt(1000);
      newRandomNumbers.add(newNumber);
    }

    setState(() {
      randomNumbers = newRandomNumbers.toList();
    });
  }
}

class _Footer extends StatelessWidget {
  VoidCallback onPressed;

  _Footer({
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: RED_COLOR,
        ),
        onPressed: () {
          this.onPressed();
        },
        child: Text("button"),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    super.key,
    required this.randomNumbers,
  });

  final List<int> randomNumbers;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: randomNumbers
            .asMap()
            .entries
            .map(
              (e) => Padding(
                padding: EdgeInsets.only(bottom: e.key == 2 ? 0 : 16.0),
                child: Row(
                  children: e.value
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
              ),
            )
            .toList(),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
