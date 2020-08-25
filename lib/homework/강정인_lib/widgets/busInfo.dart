import 'package:flutter/material.dart';

class BusInfo extends StatelessWidget{


  final String title;
  final String info;
  const BusInfo({Key key,@required this.title, @required this.info }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355.0,
      child: Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
              Text(
                info,
                style: TextStyle(
                  fontSize: 12.0,
                  color: Color(0xff787878),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Spacer(),
          Image.asset('images/bus.jpg', height: 50,),

        ],
      ),
    );
  }
}