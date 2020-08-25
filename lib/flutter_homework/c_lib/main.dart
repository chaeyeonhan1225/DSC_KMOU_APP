import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.centerLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Spacer(flex: 1,
              ),
              SizedBox(
                child: Text("학교버스 셔틀",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                height: 200,
                width: 200,
              ),
              Spacer(
                flex: 2,
              ),
              Text("학교↔남포동간 1회 운행",
                style: TextStyle(color: Colors.purple, fontSize: 20),
              ),
              Spacer(
                flex: 1,
              ),

              Text("학교출발(09:00 > 영도대교 대궁한정식 앞(09:25) >  학교도착(09:50))",
                style: TextStyle(color: Colors.black38, fontSize: 16),
              ),
              Spacer(
                flex: 2,
              ),
              Text("학교↔대연동간 1회 운행", style: TextStyle(color: Colors.purple, fontSize: 20),
              ),
              Spacer(
                flex: 1,
              ),
              Text("학교출발(08:50) > 경성대부경대역 3번출구 눈사랑안경점 앞(09:20) > 학교도착(09:55))",
                style: TextStyle(color: Colors.black38, fontSize: 16),
              ),
              Spacer(
                flex: 1,
              ),
            ],
          )
      ),
    );
  }
}