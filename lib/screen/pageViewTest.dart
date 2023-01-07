import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PageViewTest extends StatefulWidget {
  const PageViewTest({super.key});

  @override
  State<PageViewTest> createState() => _PageViewTestState();
}

class _PageViewTestState extends State<PageViewTest> {
  Timer? timer;

  PageController pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(Duration(seconds: 4), (timer) {
      print("timer");

      int currentPage = pageController.page!.toInt();
      int nextPage = currentPage + 1;

      if (nextPage > 4) {
        nextPage = 0;
      }

      pageController.animateToPage(nextPage,
          duration: Duration(milliseconds: 400), curve: Curves.linear);
    });
  }

  @override
  void dispose() {
    pageController.dispose();

    if (timer != null) {
      timer!.cancel();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 위에 시계랑 바 색깔 조절
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          ...['1', '2', '3', '4', '5']
              .map((e) => Image.asset(
                    'asset/img/pageView/image_$e.jpeg',
                    fit: BoxFit.cover,
                  ))
              .toList(),
        ],
      ),
    );
  }
}
