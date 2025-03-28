import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return hompageseclectbox();
  }

  Scaffold hompageseclectbox() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('기차 예매'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey[300], // 전체 배경
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          station("출발역"),
                          const SizedBox(width: 130),
                          station("도착역"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          stationselect("선택"),
                          const SizedBox(width: 50),
                          Container(
                            height: 50,
                            width: 2,
                            color: Colors.grey[400],
                          ),
                          const SizedBox(width: 50),
                          stationselect("선택"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20), // 흰색 박스와 버튼 사이 여백 추가
            selectseatbutton(), // 버튼 추가 (흰색 박스 아래)
          ],
        ),
      ),
    );
  }

  SizedBox selectseatbutton() {
    return SizedBox(
      width: 400,
      height: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
        ),
        onPressed: () {}, 
        child: const Text('예매하기', style: TextStyle(color: Colors.white),),
        )
    );
  }

  Text stationselect(String text1) {
    return Text(
      text1,
      style: const TextStyle(fontSize: 40),
    );
  }

  Text station(String text) {
    return Text(
      text,
      style: const TextStyle(fontSize: 16, color: Colors.grey),
    );
  }
}