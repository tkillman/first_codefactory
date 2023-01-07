import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Meeting extends StatelessWidget {
  const Meeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.pink[100],
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: _Toppart(),
              ),
              Expanded(
                flex: 1,
                child: Image.asset('asset/img/pageView/image_1.jpeg'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _Toppart extends StatefulWidget {
  const _Toppart({
    super.key,
  });

  @override
  State<_Toppart> createState() => _ToppartState();
}

class _ToppartState extends State<_Toppart> {
  final now = DateTime.now();

  DateTime pickedDateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            Column(
              children: [
                Text(
                  "우리 처음 만난날",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'sunflower',
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  '${pickedDateTime.year}.${pickedDateTime.month}.${pickedDateTime.day}',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'sunflower',
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  showCupertinoDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext buildContext) {
                      return Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          color: Colors.white,
                          height: 300.0,
                          child: CupertinoDatePicker(
                              mode: CupertinoDatePickerMode.date,
                              initialDateTime: pickedDateTime,
                              maximumDate:
                                  DateTime(now.year, now.month, now.day),
                              onDateTimeChanged: (DateTime datetime) {
                                setState(() {
                                  // 선택 날짜
                                  pickedDateTime = datetime;
                                });
                              }),
                        ),
                      );
                    },
                  );
                },
                iconSize: 60.0,
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'D +${DateTime(now.year, now.month, now.day).difference(pickedDateTime).inDays + 1}',
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
    );
  }
}
