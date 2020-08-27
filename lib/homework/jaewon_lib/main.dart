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
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
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
        title: Text("버스 정보"),
        leading: Icon(Icons.arrow_back_ios),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20.0),
          Center(
            child: Container(
                width: 380,
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                  bottom: 22,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0x80cacaca),
                          offset: Offset(0, -1),
                          blurRadius: 16,
                          spreadRadius: 2),
                    ]),
                child: Column(children: <Widget>[
                  BusRoute(
                    title: "통근버스 3호차",
                    subtitle: "경성대/수영",
                  ),
                  Divider(
                    color: Colors.deepPurple,
                    thickness: 1.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "출근 노선",
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      RichText(
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: "교직원 이용",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                          ),
                        ]),
                      ),
                      Divider(
                        color: Colors.transparent,
                      ),
                      Text("연산9동 안락뜨란채(07:40) > 망미동주공아파트(07:46)",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),),
                          Text("수영국민은행(07:51) > 수영역10번출구(07:56)",
                            style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),),
                          Text("한서병원(07:58) > KBS방송국(08:05)",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),),
                          Text("남천역버스정류장(08:07) > 경성대부경대역에서좌회전",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),),
                          Text("봄봄카페(08:12) > 더맛한우(08:15)",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),),
                          Text("대연자이아파트후문(08:16) > 부산항대교",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),),
                          Text("한라아파트(08:29) > 동삼동농협(08:32)",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),),
                          Text("학교도착(08:45)",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                      Divider(
                        color: Colors.transparent,
                      ),
                      Text("퇴근노선",
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w900,)
                        ,),
                      RichText(
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: "정원 여유시",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                          ),
                          TextSpan(
                            text: "학생 이용 가능",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.deepPurple,
                            ),
                          ),
                          TextSpan(
                            text: "(정원45명)",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                          ),
                        ]),
                      ),
                      Divider(
                        color: Colors.transparent,
                      ),
                      Text("학교출발(18:10) > 영도구청 > 부산항대교 > 경성대 > 남",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),),
                          Text("천역 > 수영로터리 > 망미동주공아파트",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ])),
          )
        ],
      ),
    );
  }
}

class BusRoute extends StatelessWidget {
  final String title;
  final String subtitle;

  const BusRoute({Key key, this.title, this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(title,
                style: TextStyle(
                  fontSize: 26.0,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w700,
                )),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
          ],
        ),
        Spacer(),
        Icon(Icons.directions_bus,
          size: 55.0,
          color: Colors.deepPurple,
        ),
      ],
    );
  }
}