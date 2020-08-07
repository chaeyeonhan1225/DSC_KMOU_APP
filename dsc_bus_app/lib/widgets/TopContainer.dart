import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TopContainer extends StatelessWidget{

  final List<Color> backgroundColor;
  const TopContainer({ Key key, @required this.backgroundColor }): super(key: key);

  @override
  Widget build(BuildContext context){
    return  Container(
      width: double.infinity,
      // height: 282,
      child: Image.asset(
        'images/TopContainer.png',fit:BoxFit.cover,
      ),

    );
  }
}