import 'package:first_codefactory/screen/constConstructor.dart';
import 'package:flutter/material.dart';

// StatelessWidget 기초
import 'package:first_codefactory/screen/home_screen.dart';

// 로딩바
import 'package:first_codefactory/screen/home_screen2.dart';

// layout
import 'package:first_codefactory/screen/home_screen3.dart';

// webView
import 'package:first_codefactory/screen/webViewScreen.dart';

// lifyCycle
import 'package:first_codefactory/screen/lifeCycle.dart';

// 전자액자 pageView
import 'package:first_codefactory/screen/pageViewTest.dart';

// 만난지 ui
import 'package:first_codefactory/screen/meeting.dart';

// const contstructor 사용

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'sunflower',
        textTheme: TextTheme(
          displayMedium: TextStyle(
            color: Colors.white,
            fontFamily: 'parisienne',
            fontSize: 80.0,
          ),
          displaySmall: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
          headlineMedium: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
          headlineSmall: TextStyle(
            color: Colors.white,
            fontSize: 50.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      home: ConstConstructor(),
    ),
  );
}
