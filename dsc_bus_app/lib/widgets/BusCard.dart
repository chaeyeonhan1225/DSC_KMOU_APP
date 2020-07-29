import 'package:flutter/material.dart';

class BusCard extends StatelessWidget {
  final String busName;
  final String minTime;
  final Color color;

  const BusCard(
      {Key key,@required this.busName, @required this.minTime,@required this.color})
      : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(8),
        color: color,
        child: Container(
          height: 100,
          width: 170,
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.directions_bus,
                    color: Colors.white,
                    size: 20.0,
                  ),
                  SizedBox(width: 8.0),
                  Text(busName,style: TextStyle(
                    // color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  )
                ],
              ),
              SizedBox(height: 5.0),
              Divider(color: Colors.white),
              SizedBox(height: 5.0),
              Text(minTime,style: TextStyle(
                // color: Colors.white,
                fontSize: 15.0,
              ),
              )
            ],
          )
        ),
      ),
    );
  }

}