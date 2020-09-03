import 'package:flutter/material.dart';

Widget dateBox(){
  return Container(
    margin: EdgeInsets.fromLTRB(30, 15, 30, 0),
    height: 42,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.grey.shade200,
    ),
    child: Row(
      children: [
        dates("Mar 26, 2019"),
        VerticalDivider(
            color: Colors.grey.shade500
        ),
        dates("Apr 26, 2019"),
      ],
    ),
  );
}

Widget dates(String s){
  return Expanded(
    child: Container(
      padding: EdgeInsets.only(left: 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            s,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500
            ),
          ),
          Icon(Icons.arrow_drop_down,size: 35,)
        ],
      ),
    ),
  );
}