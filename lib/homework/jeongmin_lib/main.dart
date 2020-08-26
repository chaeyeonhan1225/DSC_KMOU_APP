
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
                width: 360,
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
                    title: "통근버스 2호차",
                    subtitle: "남포동/문현동",
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
                          fontSize: 17.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      RichText(
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: "교직원 이용/",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey,
                            ),
                          ),
                          TextSpan(
                            text: "학생은 영도대교 승차",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.deepPurple,
                              height: 1.0,
                            ),
                          ),
                        ]),
                      ),
                      RichText(
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                            text:"서면역(07:58) > 범일역 5번출구(08:03) > 부산진역 7번출구(08:08) > 부산역 3번출구(08:13) >",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: "영도대교 대궁한정식 앞(08:20)",
                            style: TextStyle(
                              color: Colors.deepPurple,
                            ),
                          ),
                          TextSpan(
                            text: " > 관사(08:35) > 학교도착(08:45)",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ]),
                      ),

                      Text(
                        "퇴근 노선",
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w500,

                        ),
                      ),
                      RichText(
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: "정원 여유시 ",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey,
                            ),
                          ),
                          TextSpan(
                            text: "학생 이용 가능",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.deepPurple,
                            ),
                          ),
                          TextSpan(
                            text: "(정원 45명) ",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey,
                            ),
                          ),
                        ]),
                      ),
                      Text("학교출발(18:10) > 중리관사앞 > 영도소방서 > 롯데백화점 > 부산역 > 부산진역 > 문현동 > 대연동",
                        style: TextStyle(
                          height: 1.7,),
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
                  fontSize: 22.0,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w500,
                )),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 13.0,
                color: Color(0xff787878),
              ),
            ),
          ],
        ),
        Spacer(),
        Image.asset(
          'images/bus_big_image.png',
          height: 50.0,
        ),
      ],
    );
  }
}