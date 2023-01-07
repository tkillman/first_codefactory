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

// WebView
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LifeCycle(),
  ));
}
