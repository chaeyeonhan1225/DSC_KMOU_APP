import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './widgets/BusRoute.dart';

class BusPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(CupertinoIcons.back, color: Color(0xff842fb5)),
        title: Text(
          "버스정보",
          style: TextStyle(
            color: Color(0xff842fb5),
            fontWeight: FontWeight.w300,
            fontSize: 16.0,
          ),
        ),
        titleSpacing: -15,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "통근버스정보",
                style: TextStyle(
                  fontSize: 26.0,
                  color: Color(0xff842fb5),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Card(
                // 우리가 위젯을 만들거에요 !!
                child: Column(
                  children: <Widget>[
                    BusRoute(title: "통근버스 1호차", info: "서면/구서동"),
                    Divider(
                      color: Color(0xff842fb5),
                      thickness: 1.0,
                    ),
                    Text("이 자리에 버스 시간표가 들어갑니다"),
                  ],
                ),
              ),
              Container(
                width: 360.0,
                padding: EdgeInsets.all(8.0),
                child: Card(
                  child: Column(
                    children: <Widget>[
                      BusRoute(title: "통근버스 2호차", info: "서면/구서동"),
                      Divider(
                        color: Color(0xff842fb5),
                        thickness: 1.0,
                      ),
                      Text("이 자리에 버스 시간표가 들어갑니다"),
                    ],
                  ),
                ),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    BusRoute(title: "통근버스 3호차", info: "서면/구서동"),
                    Divider(
                      color: Color(0xff842fb5),
                      thickness: 1.0,
                    ),
                    Text("이 자리에 버스 시간표가 들어갑니다"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
