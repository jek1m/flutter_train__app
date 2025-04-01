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
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              station(startStation),
              const SizedBox(width: 50),
              const Icon(
                Icons.arrow_circle_right_outlined,
                size: 40,
              ),
              const SizedBox(width: 50),
              station(endStation),
            ]
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              selectsquare(Colors.purple),
              const SizedBox(width: 8),
              Text("선택됨"),
              const SizedBox(width: 30),
              selectsquare(Colors.grey[350]!),
              const SizedBox(width: 8),
              Text("선택안됨"),
            ]

          )

        ]
        
      )
    );
  }

  Container selectsquare(Color color) {
    return Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10),
              ),
            );
  }

  Text station(String text) {
    return Text(
              text,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.purple, 
                fontWeight: FontWeight.bold 
              ),
            );
  }
}