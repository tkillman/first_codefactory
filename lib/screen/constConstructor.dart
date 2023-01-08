import 'package:flutter/material.dart';

class ConstConstructor extends StatefulWidget {
  const ConstConstructor({super.key});

  @override
  State<ConstConstructor> createState() => _ConstConstructorState();
}

class _ConstConstructorState extends State<ConstConstructor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const의 생성자의 경우 build 를 한번만 실행
            const LabelText(label: 'label1'),
            LabelText(label: 'label2'),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text("버튼"))
          ],
        ),
      ),
    );
  }
}

class LabelText extends StatelessWidget {
  final String label;

  const LabelText({required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    print("$label bulid");
    return Text(label);
  }
}
