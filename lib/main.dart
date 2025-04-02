// 작성자 : 플러터 6기 개발 김지은
// 작성일 : 2025.04.02
// [Flutter 기초] 개인 과제 - 기차 예매 서비스

import 'package:flutter/material.dart';
import 'package:flutter_train__app/HomePage.dart';



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

