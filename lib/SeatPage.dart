import 'package:flutter/material.dart';
import 'package:flutter_train__app/StationListPage.dart';
import 'package:flutter_train__app/main.dart';

class Seatpage extends StatelessWidget {
  final String startStation;
  final String endStation;

  const Seatpage(this.startStation, this.endStation, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('좌석 선택')),
      body: Center(
        child: Text('출발역: $startStation\n도착역: $endStation'),
      ),
    );
  }
}