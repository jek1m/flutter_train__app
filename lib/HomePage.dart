import 'package:flutter/material.dart';
import 'package:flutter_train__app/SeatPage.dart';
import 'package:flutter_train__app/StationListPage.dart';
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedStartStation = "선택";
  String selectedEndStation = "선택";

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
                          GestureDetector(
                            onTap: ()async {
                              // print("아무");
                              final result = await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => StartStationListPage(),
                                  )
                                );
                                // print("나는 $result");
                                setState(() {
                                  selectedStartStation = result;
                                });
                            },
                            child: stationselect(selectedStartStation), //출발역 선택
                            ),
                          const SizedBox(width: 50),
                          Container(
                            height: 50,
                            width: 2,
                            color: Colors.grey[400],
                          ),
                          const SizedBox(width: 50),
                          GestureDetector(
                            onTap: ()async {
                              // print("아무");
                              final result = await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EndStationListPage(),
                                  )
                                );
                                // print("나는 $result");
                                setState(() {
                                  selectedEndStation = result;
                                });
                            },
                            child: stationselect(selectedEndStation), //도착역 선택
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),
            selectseatbutton(),
          ],
        ),
      ),
    );
  }

  /// 예매하기 버튼 함수
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
      onPressed: () {
        if (selectedStartStation == "선택" || selectedEndStation == "선택") { // 둘 중에 하나라도 선택되지 않았거나 모두 선택되지 않았을 때 예매버튼을 누르면
          // 안내창 띄우기
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('오류'),
                content: const Text('출발역과 도착역을 선택해주세요.'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('확인'),
                  ),
                ],
              );
            },
          );
        } else if (selectedStartStation == selectedEndStation) { // 출발역과 도착역이 같으면
          // 안내창 띄우기
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('오류'),
                content: const Text('출발역과 도착역이 같습니다.\n다른 역을 선택해주세요.'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('확인'),
                  ),
                ],
              );
            },
          );
        } else {
          // 페이지 이동
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Seatpage(selectedStartStation, selectedEndStation)),
          );
        }
      },
        child: const Text('예매하기', style: TextStyle(color: Colors.white),),
        )
    );
  }

  /// 출발역, 도착역 선택(초기엔 '선택'으로 돼있음. 선택하면 해당 역으로 바뀌는 함수)
  Text stationselect(String text1) {
    return Text(
      text1,
      style: const TextStyle(fontSize: 40),
    );
  }

  /// 출발역, 도착역 표시 함수
  Text station(String text) {
    return Text(
      text,
      style: const TextStyle(fontSize: 16, color: Colors.grey),
    );
  }
}

