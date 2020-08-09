import 'package:flutter/material.dart';

class BusRoute extends StatelessWidget {
  // BusInfo(
  //  title: "통근버스 1호차"
  //  info: "서면/구서동"
  // )
  final String title;
  final String info;
  final String busnum;
  const BusRoute({Key key, @required this.title, @required this.info , @required this.busnum})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355.0,
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  fontSize: 22.0,
                  color: Color(0xff131415),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(info,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xff787878),
                    fontWeight: FontWeight.w500,
                  )),
            ],
          ),
          Spacer(),
          SizedBox(
              width: 68.0,
              height: 50.0,
              child: Stack(
                children: <Widget>[
                  Image.asset('images/BusPage/commuterbus.png'),
                  Column(
                    children: <Widget>[
                      SizedBox(height:26.0),
                      Row(
                        children: <Widget>[
                          SizedBox(width:14.0),
                          Text(
                            busnum,
                            style: TextStyle(
                                color: const Color(0xffffffff),
                                fontWeight: FontWeight.w500,
                                fontFamily: "NotoSansKR",
                                fontStyle: FontStyle.normal,
                                fontSize: 10.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
