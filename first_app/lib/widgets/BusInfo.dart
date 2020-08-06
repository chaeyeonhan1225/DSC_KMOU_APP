import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BusInfo extends StatelessWidget {
  final List<String> timeTable;
  final double width;

  const BusInfo({Key key, this.timeTable, @required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double rate = 1 / 375.0;
    double fullWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
            width: width,
            height: 80,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "09:46",
                      style: const TextStyle(
                        color: const Color(0xff131415),
                        fontWeight: FontWeight.w500,
                        fontFamily: "NotoSansKR",
                        fontStyle: FontStyle.normal,
                        fontSize: 16.0,
                        letterSpacing: -0.28,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "5분 후!",
                      style: const TextStyle(
                        color: const Color(0xff666666),
                        fontWeight: FontWeight.w500,
                        fontFamily: "NotoSansKR",
                        fontStyle: FontStyle.normal,
                        fontSize: 12.0,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 27.0),
                Row(
                  children: <Widget>[
                    Text("다음차"),
                    Spacer(),
                    Icon(Icons.directions_bus),
                  ],
                ),
              ],
            ),
            padding: EdgeInsets.only(
              left: 7.0,
              right: 7.0,
              top: 4.0,
              bottom: 4.0,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: const Color(0xff842fb5), width: 2),
                color: const Color(0xffffffff))),
        SizedBox(width: 13.0 * fullWidth * rate),
        Container(
            width: width,
            height: 80,
            padding: EdgeInsets.only(
              left: 7.0,
              right: 7.0,
              top: 4.0,
              bottom: 4.0,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "09:46",
                      style: const TextStyle(
                        color: const Color(0xff131415),
                        fontWeight: FontWeight.w500,
                        fontFamily: "NotoSansKR",
                        fontStyle: FontStyle.normal,
                        fontSize: 16.0,
                        letterSpacing: -0.28,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "5분 후!",
                      style: const TextStyle(
                        color: const Color(0xff666666),
                        fontWeight: FontWeight.w500,
                        fontFamily: "NotoSansKR",
                        fontStyle: FontStyle.normal,
                        fontSize: 12.0,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 27.0),
                Row(
                  children: <Widget>[
                    Text("다음차"),
                    Spacer(),
                    Icon(Icons.directions_bus),
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: const Color(0xff737373), width: 1),
                color: const Color(0xffffffff))),
        SizedBox(width: 13.0 * fullWidth * rate),
        Container(
            width: width,
            height: 80,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "09:46",
                      style: const TextStyle(
                        color: const Color(0xff131415),
                        fontWeight: FontWeight.w500,
                        fontFamily: "NotoSansKR",
                        fontStyle: FontStyle.normal,
                        fontSize: 16.0,
                        letterSpacing: -0.28,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "5분 후!",
                      style: const TextStyle(
                        color: const Color(0xff666666),
                        fontWeight: FontWeight.w500,
                        fontFamily: "NotoSansKR",
                        fontStyle: FontStyle.normal,
                        fontSize: 12.0,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 27.0),
                Row(
                  children: <Widget>[
                    Text("다음차"),
                    Spacer(),
                    Icon(Icons.directions_bus),
                  ],
                ),
              ],
            ),
            padding: EdgeInsets.only(
              left: 7.0,
              right: 7.0,
              top: 4.0,
              bottom: 4.0,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: const Color(0xff737373), width: 1),
                color: const Color(0xffffffff)))
      ],
    );
  }
}
