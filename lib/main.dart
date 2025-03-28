import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_train__app/home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'NotoSansKR',
      ),
      home: HomePage() // 앱을 켰을 때 가장 먼저 보이는 페이지를 HomePage로 설정
    );
  }
}

