import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final String title;

  final List<Widget> children;

  const MainLayout({required this.title, required this.children, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
      )),
    );
  }
}
