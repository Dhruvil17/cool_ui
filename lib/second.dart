import 'package:flutter/material.dart';
import 'scrollingOrder.dart';

class second extends StatefulWidget {
  static const id = "second";
  @override
  _secondState createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            scrollingDesign(),
            LiveTracking(),
          ],
        ),
      ),
    );
  }
}

class LiveTracking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30,
        ),
        Container(
          margin: EdgeInsets.only(left: 30),
          child: Text(
            "Live Tracking",
            style: t(Colors.black, 20, FontWeight.bold),
          ),
        ),
        SizedBox(height: 15,),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 19,
              ),
            ],
          ),
            child: Image.asset("images/map.PNG"),),
        SizedBox(height: 30,),
        Container(
          margin: EdgeInsets.only(left: 30),
          child: Text(
            "Details",
            style: t(Colors.black, 20, FontWeight.bold),
          ),
        ),
        SizedBox(height: 30,),
      ],
    );
  }
}

TextStyle t(Color color, double fontSize, var fontWeight) {
  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
  );
}
