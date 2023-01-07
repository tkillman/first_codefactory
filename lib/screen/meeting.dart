import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Meeting extends StatefulWidget {
  Meeting({super.key});

  @override
  State<Meeting> createState() => _MeetingState();
}

class _MeetingState extends State<Meeting> {
  final DateTime now = DateTime.now();
  DateTime pickedDateTime =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

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
                child: _Toppart(
                    pickedDateTime: pickedDateTime, onPress: onHeartPress),
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

  void onHeartPress() {
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

                // 선택모드 날짜만
                mode: CupertinoDatePickerMode.date,
                // 초기 선택값
                initialDateTime: pickedDateTime,
                // 선택 제한 (미래 선택 불가능)
                maximumDate: DateTime(now.year, now.month, now.day),
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
  }
}

class _Toppart extends StatelessWidget {
  DateTime pickedDateTime;
  VoidCallback onPress;
  final now = DateTime.now();

  _Toppart({required DateTime pickedDateTime, required VoidCallback onPress})
      : this.pickedDateTime = pickedDateTime,
        this.onPress = onPress,
        super();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "U&I",
              style: theme.textTheme.displayMedium,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  "우리 처음 만난날",
                  style: theme.textTheme.displaySmall,
                ),
                Text(
                  '${pickedDateTime.year}.${pickedDateTime.month}.${pickedDateTime.day}',
                  style: theme.textTheme.headlineMedium,
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: onPress,
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
              style: theme.textTheme.headlineSmall,
            ),
          ],
        )
      ],
    );
  }
}
