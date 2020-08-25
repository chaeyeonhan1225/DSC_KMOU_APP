import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import './widgets/busInfo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  // 필요없는 코드 삭제
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          CupertinoIcons.back,
          color: Color(0xff842fb5),
        ),
        title: Text(
          "버스정보",
          style: TextStyle(
            fontSize: 16.0,
            color: Color(0xff842fb5),
            fontWeight: FontWeight.w300,
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
                "통근버스정보\n",
                style: TextStyle(
                  fontSize: 26.0,
                  color: Color(0xff842fb5),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                width: 380,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.only(
                  left: 18,
                  right: 18,
                  top: 19,
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
                          spreadRadius: 2)
                    ]),
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  // EdgeInset.only(left: 18.0, right: 18.0, top: 19.0, bottom: 22.0)으로 부탁드립니다.
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      BusInfo(
                        title: "통근버스 1호차", // 오타 수정해 주세요 !
                        info: "서면/구서동",
                      ),
                      Divider(
                        color: Color(0xff842fb5),
                        thickness: 1.0,
                      ),

                      Text(
                        "출근 노선",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xff842fb5),
                          fontWeight: FontWeight.w500,
                          height: 1.2,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: "교직원 이용/",
                          style: TextStyle(
                            color: Color(0xff787878),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            height: 1.1,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '학생은 영도대교 승차\n',
                              style: TextStyle(
                                color: Color(0xff842fb5),
                                height: 1.1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // 아래 버스 노선 정보는
                      // fontSize: 13.0,
                      // color: Color(0xff131415),
                      // fontWeight: FontWeight.w300 으로 수정 부탁드립니다.
                      // height은 줄 간격 넓히려고 제가 임시로 넣어놨어요 ! 속성은 검색해보시면 될것 같아요
                      Text(
                        "구서동2동 풍년혼수마트(07:27) > 롯데캐슬 상가앞(02:28)",
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Color(0xff787878),
                          fontWeight: FontWeight.w500,
                          height: 1.2,
                        ),
                      ),
                      Text(
                        "장전동 기아자동차(07:31) > 장전동 놀이터(07:34)",
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Color(0xff787878),
                          fontWeight: FontWeight.w500,
                          height: 1.2,
                        ),
                      ),
                      Text(
                        "온천장 홈플러스(07:42) > 롯데백화점 정류장(07:44)",
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Color(0xff787878),
                          fontWeight: FontWeight.w500,
                          height: 1.2,
                        ),
                      ),
                      Text(
                        "삼성프라자(온천점)(07:46) > 교대역(07:49)",
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Color(0xff787878),
                          fontWeight: FontWeight.w500,
                          height: 1.2,
                        ),
                      ),
                      Text(
                        "연산동.연제초교(07:51) > 양정역(07:55)",
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Color(0xff787878),
                          fontWeight: FontWeight.w500,
                          height: 1.2,
                        ),
                      ),
                      Text(
                        "부전역(07:59) > 서면역(08:02)",
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Color(0xff787878),
                          fontWeight: FontWeight.w500,
                          height: 1.2,
                        ),
                      ),
                      Text(
                        "범일역 5번출구(08:06) > 부산진역 7번출구(08:11)",
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Color(0xff787878),
                          fontWeight: FontWeight.w500,
                          height: 1.2,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: "부산역 3번출구(08:15) > ",
                          style: TextStyle(
                            color: Color(0xff787878),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            height: 1.2,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: '영도대교 대궁한정식 앞(08:25)',
                                style: TextStyle(
                                  color: Color(0xff842fb5),
                                  height: 1.2,
                                )),
                          ],
                        ),
                      ),
                      Text(
                        "학교도착(08:45)",
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Color(0xff787878),
                          fontWeight: FontWeight.w500,
                          height: 1.2,
                        ),
                      ),
                      Text(
                        "\n퇴근 노선",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xff842fb5),
                          fontWeight: FontWeight.w500,
                          height: 1.2,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: "정원 여유시",
                          style: TextStyle(
                            color: Color(0xff787878),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            height: 1.1,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' 학생 이용 가능 ',
                              style: TextStyle(
                                color: Color(0xff842fb5),
                                height: 1.1,
                              ),
                            ),
                            TextSpan(
                              text: '(정원 45명)\n',
                              style: TextStyle(
                                color: Color(0xff787878),
                                height: 1.1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "학교출발(18:10) > 중앙역 > 부산역 > 서면 > 시청\n동래 > 부산대\n",
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Color(0xff787878),
                          fontWeight: FontWeight.w500,
                          height: 1.2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
