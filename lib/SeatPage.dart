import 'package:flutter/material.dart';
import 'package:flutter_train__app/StationListPage.dart';

class Seatpage extends StatefulWidget {
  final String startStation;
  final String endStation;

  const Seatpage(this.startStation, this.endStation, {super.key});

  @override
  State<Seatpage> createState() => _SeatpageState();
}

class _SeatpageState extends State<Seatpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 앱바
      appBar: AppBar(title: const Text('좌석 선택')),
      body: Column(
        children: [
          // 역 -> 역 표시 위젯
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              station(widget.startStation),
              const SizedBox(width: 50),
              const Icon(
                Icons.arrow_circle_right_outlined,
                size: 40,
              ),
              const SizedBox(width: 50),
              station(widget.endStation),
            ]
          ),

          const SizedBox(height: 30),

          // 선택된 좌석과 선택되지 않은 좌석 색깔 구분해주는 위젯
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

          // 각 좌석 ABCD 구분 위젯
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

          // 반복문을 사용해 모든 좌석 위젯 구현
          SingleChildScrollView( // scroll이 왜 안되는거지
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              for (var i = 1; i <= 20; i++) ...[  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      seatsquare(),
                      const SizedBox(width: 2.5),
                      seatsquare(),
                      const SizedBox(width: 32.5),
                      Text("$i", style: TextStyle(fontSize: 20)), // const 쓰라고 뭐가 뜨는데 const 쓰면 i가 바뀌면 안되지않나...?
                      const SizedBox(width: 32.5),
                      seatsquare(),
                      const SizedBox(width: 2.5),
                      seatsquare(),
                    ],
                  ),
                  const SizedBox(height: 10),  // Row 사이 간격 추가
                ],
            
              ],
            ),
          )


        ]
        
      )
    );
  }

  /// 좌석 선택 페이지 좌석 부분 위젯(박스) 구현하는 함수
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

  /// 좌석 선택 페이지 ABCD부분 위젯을 구현하는 함수
  Text ABCD(String text) => Text(text,style: TextStyle(fontSize: 20),);

  /// 좌석 선택 페이지 선택됨, 선택안됨 색깔 구분 위해 만든 함수
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

  /// 역 이름을 화면에 출력하기 위한 함수
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