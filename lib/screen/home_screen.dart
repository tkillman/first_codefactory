import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Column(
            //start -- 시작
            //end -- 끝
            //center -- 가운데
            //spaceBetween -- 위젯 사이 동일, 끝부터 시작
            //spaceEvenly -- 위젯 사이 동일, 끝이 비어있음.
            //spaceAround -- 위젯 사이 동일, 끝이 1/2
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                width: 50.0,
                height: 50.0,
              ),
              Container(
                color: Colors.orange,
                width: 50.0,
                height: 50.0,
              ),
              Container(
                color: Colors.yellow,
                width: 50.0,
                height: 50.0,
              ),
              Container(
                color: Colors.green,
                width: 50.0,
                height: 50.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
