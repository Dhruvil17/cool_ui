import 'package:flutter/material.dart';
Widget usage(){
  return Container(
    height: 50,
    margin: EdgeInsets.fromLTRB(30, 45, 30, 0),
    child: Row(
      children: [
        usageBox("₹ 2450", "Spending",Color(0xffD9D4FD)),
        usageBox("₹ 6532", "Income",Color(0xffE5ECF9)),
      ],
    ),
  );
}

Widget usageBox(String amount,String title, Color color){
  return Expanded(
    child: Container(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 20),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.w500,
                      fontSize: 15
                  ),
                ),
                Text(
                  amount,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
