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
              const Text("선택됨"),
              const SizedBox(width: 30),
              selectsquare(Colors.grey[350]!),
              const SizedBox(width: 8),
              const Text("선택안됨"),
            ]
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ABCD("A"),
              const SizedBox(width: 30),
              ABCD("B"),
              const SizedBox(width: 105),
              ABCD("C"),
              const SizedBox(width: 30),
              ABCD("D"),
            ]
          ),
          const SizedBox(height: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            for (var i = 1; i <= 20; i++) ...[  // 여러 Row를 세로로 나열
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    seatsquare(),
                    const SizedBox(width: 2.5),
                    seatsquare(),
                    const SizedBox(width: 32.5),
                    Text("$i", style: TextStyle(fontSize: 20)),
                    const SizedBox(width: 32.5),
                    seatsquare(),
                    const SizedBox(width: 2.5),
                    seatsquare(),
                  ],
                ),
                const SizedBox(height: 10),  // Row 사이 간격 추가
              ],

            ],
          )


        ]
        
      )
    );
  }

  Container seatsquare() {
    return Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(10),
              ),
            );
  }

  Text ABCD(String text) => Text(text,style: TextStyle(fontSize: 20),);

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