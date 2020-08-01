import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './style/AppColors.dart';
import './widgets/BusCard.dart';
import './widgets/TopContainer.dart';
import 'package:flutter/services.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: AppColors.PastelLime, // navigation bar color
    statusBarColor: AppColors.PastelBlue, // status bar color
  ));
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
          child: Container(
            color: AppColors.PastelLime,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                TopContainer(
                  width: MediaQuery.of(context).size.width,
                  height: 160.0,
                  mainColor: AppColors.PastelBlue,
                  child: Text("BUS",style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ))
                ),
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                        width: 12.0
                    ),
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
                _buildListView(),
                // Divider(),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                        width: 12.0
                    ),
                    Icon(
                      Icons.done,
                      size: 22.0,
                      color: AppColors.PastelOrange,
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
                _buildListView(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildListView(){
    return Container(
      alignment: Alignment.center,
      height: 250,
      child: ListView(
        // scrollDirection: Axis.horizontal,
        children: <Widget> [
          BusCard(
            busName: '190',
            minTime: '2분 남음',
            color:  AppColors.PastelRed,
          ),
          BusCard(
            busName: '190',
            minTime: '15분 남음',
            color:  AppColors.PastelOrange,
          ),
        ]
      )
    );
  }
}