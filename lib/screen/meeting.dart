import 'package:flutter/material.dart';

class Meeting extends StatelessWidget {
  const Meeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.pink[100],
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "U&I",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'parisienne',
                            fontSize: 80.0,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "우리 처음 만난날",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'sunflower',
                            fontSize: 30.0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "2023.01.07",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'sunflower',
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite,
                            ))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "D+1",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'sunflower',
                            fontSize: 50.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Row(
                      children: [Text("그림")],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
