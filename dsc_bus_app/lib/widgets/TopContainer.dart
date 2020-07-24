import 'package:flutter/material.dart';

class TopContainer extends StatelessWidget {

  final double width;
  final double height;
  final Color mainColor;
  final Widget child;

  const TopContainer(
      {Key key,@required this.width, @required this.height,this.mainColor,this.child})
      : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        )
      ),
      child: child,
    );
  }

}