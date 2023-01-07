import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {
  const WebViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Code Factory'),

        //안드로이드나 ios의 경우 appbar의 타이블 정렬이 다를 수 있는데 이를 강제함.
        centerTitle: false,
      ),
      body: WebView(
        initialUrl: "https://www.naver.com",
        // 웹에서 자바스크립트 사용 가능
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
