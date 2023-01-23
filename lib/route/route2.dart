import 'package:first_codefactory/route/main_layout.dart';
import 'package:flutter/material.dart';

class Route2 extends StatelessWidget {
  const Route2({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments;

    return MainLayout(title: "route2", children: [
      Text("args : $args"),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("pop"))
    ]);
  }
}
