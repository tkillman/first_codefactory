import 'package:first_codefactory/route/main_layout.dart';
import 'package:first_codefactory/route/route2.dart';
import 'package:flutter/material.dart';

class Route1 extends StatelessWidget {
  final String args;

  const Route1({required this.args, super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: "route1", children: [
      Text("args : $args"),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop("456");
          },
          child: Text("pop")),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return Route2();
                },
                settings: RouteSettings(arguments: "789")));
          },
          child: Text("go route2")),
    ]);
  }
}
