import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'BUS_APP'),
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
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 25.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.done,
                    size: 22.0,
                    color: Colors.green,
                  ),
                  SizedBox(
                      width: 8.0
                  ),
                  Text(
                      '해양대 190 시간표',
                      style: TextStyle(
                        fontSize: 22.0,
                      )
                  ),
                ],
              ),

              SizedBox(
                height: 12.0,
              ),
              Card(
                  child: ListTile(
                    leading: Icon(
                        Icons.directions_bus
                    ),
                    title: Text('190번'),
                    subtitle: Text('@분 남음'),
                  )
              ),
              Divider(),
              SizedBox(
                height: 15.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.done,
                    size: 22.0,
                    color: Colors.green,
                  ),
                  SizedBox(
                      width: 8.0
                  ),
                  Text(
                      '해양대 순환버스 시간표',
                      style: TextStyle(
                        fontSize: 22.0,
                      )
                  ),
                ],
              ),
              SizedBox(
                height: 12.0,
              ),
              Card(
                  child: ListTile(
                    leading: Icon(
                        Icons.directions_bus
                    ),
                    title: Text('해양대 순환버스'),
                    subtitle: Text('@분 남음'),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}