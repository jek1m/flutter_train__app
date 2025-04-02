import 'package:flutter/material.dart';


class StartStationListPage extends StatefulWidget {
  @override
  State<StartStationListPage> createState() => StartStationListPageState();
}

class StartStationListPageState extends State<StartStationListPage> {
  String? selectedStartStation; // 선택된 역을 저장할 변수

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("출발역")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          stationName('수서', context),
          stationName('동탄', context),
          stationName('평택지제', context),
          stationName('천안아산', context),
          stationName('오송', context),
          stationName('대전', context),
          stationName('김천구미', context),
          stationName('동대구', context),
          stationName('경주', context),
          stationName('울산', context),
          stationName('부산', context),
        ],
      ),
    );
  }

  /// 역 선택 시 해당 역을 선택된 역 변수에 저장하는 함수
  SizedBox stationName(String text, BuildContext context) {
    return SizedBox(
      height: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                selectedStartStation = text;
                print(selectedStartStation);
              });
              // 선택된 역을 다른 화면으로 넘기기
              Navigator.pop(
                context,text
                // MaterialPageRoute(
                //   builder: (context) => HomePage(selectedStartStation,"선택"),
                // ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 5),
              child: Text(
                text,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Divider(
            thickness: 2, // 줄 두께 (기본값 1)
            color: Colors.grey[300], // 줄 색상
          ),
        ],
      ),
    );
  }
}



class EndStationListPage extends StatefulWidget {
  @override
  State<EndStationListPage> createState() => EndStationListPageState();
}

class EndStationListPageState extends State<EndStationListPage> {
  String? selectedEndStation; // 선택된 역을 저장할 변수

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("출발역")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          stationName('수서', context),
          stationName('동탄', context),
          stationName('평택지제', context),
          stationName('천안아산', context),
          stationName('오송', context),
          stationName('대전', context),
          stationName('김천구미', context),
          stationName('동대구', context),
          stationName('경주', context),
          stationName('울산', context),
          stationName('부산', context),
        ],
      ),
    );
  }

  /// 역 선택 시 해당 역을 선택된 역 변수에 저장하는 함수
  SizedBox stationName(String text, BuildContext context) {
    return SizedBox(
      height: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                selectedEndStation = text;
                // print(selectedEndStation); // 선택된 역을 저장
              });
              // 선택된 역을 다른 화면으로 넘기기
              Navigator.pop(
                context,text
                // MaterialPageRoute(
                //   builder: (context) => HomePage(selectedStartStation,"선택"),
                // ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 5),
              child: Text(
                text,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Divider(
            thickness: 2,
            color: Colors.grey[300],
          ),
        ],
      ),
    );
  }
}
