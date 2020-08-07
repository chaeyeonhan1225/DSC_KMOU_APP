import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class TopContainer extends StatelessWidget{

  final List<Color> backgroundColor;
  const TopContainer({ Key key, @required this.backgroundColor }): super(key: key);

  @override
  Widget build(BuildContext context){
    return  ClipPath(
      clipper: OvalBottomBorderClipper(),
      child: Container(
        width: double.infinity,
        height: 282,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(1, 1.0066717739762931),
            end: Alignment(-0.3834225260416666, -0.3105676773146455),
            colors: backgroundColor,
          ),
        ),
      ),
    );
  }
}