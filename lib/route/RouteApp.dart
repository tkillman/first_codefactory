import 'package:first_codefactory/route/main_layout.dart';
import 'package:first_codefactory/route/route1.dart';
import 'package:flutter/material.dart';

class RouteApp extends StatelessWidget {
  const RouteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: "mainLayout", children: [
      Center(
        child: ElevatedButton(
            onPressed: () async {
              final result = await Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Route1(args: "123"),
              ));

              print("result $result");
            },
            child: Text("push")),
      )
    ]);
  }
}
