import 'package:flutter/material.dart';

class LifeCycle extends StatefulWidget {
  const LifeCycle({super.key});

  @override
  State<LifeCycle> createState() => _LifeCycleState();
}

class _LifeCycleState extends State<LifeCycle> {
  bool show = false;
  Color boxColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  (show ? centerContainer(boxColor: boxColor) : Container())
                ],
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    print("색바꾸기");
                    setState(() {
                      boxColor =
                          boxColor == Colors.red ? Colors.blue : Colors.red;
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    color: Colors.blue,
                    child: Center(child: Text('색 바꾸기')),
                  ),
                )
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    print("위젯 생성");
                    setState(() {
                      show = !show;
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    color: Colors.blue,
                    child: Center(
                        child: Text('위젯' + (!show ? '생성' : '삭제') + '하기')),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class centerContainer extends StatefulWidget {
  const centerContainer({
    super.key,
    required this.boxColor,
  });

  final Color boxColor;

  @override
  State<centerContainer> createState() {
    print("createState");
    return _centerContainerState();
  }
}

class _centerContainerState extends State<centerContainer> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    print("build");
    return GestureDetector(
      onTap: () {
        setState(() {
          num++;
        });
      },
      child: Container(
        width: 50,
        height: 50,
        color: widget.boxColor,
        child: Center(child: Text(num.toString())),
      ),
    );
  }

  /// 생명주기 확인

  @override
  void initState() {
    print("initState");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print("didChangeDependencies");
    super.didChangeDependencies();
  }

  @override
  void deactivate() {
    print("deactivate");
    super.deactivate();
  }

  @override
  void dispose() {
    print("dispose");
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant centerContainer oldWidget) {
    print("didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }
}
