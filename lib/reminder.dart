import 'package:flutter/material.dart';

Widget reminder(var context) {
  return Container(
    height: 510,
    width: double.infinity,
    color: Color(0xff0041C4),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 40),
          child: Text(
            "Reminders",
            style: TextStyle(
              color: Colors.white,
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        monthlyCardCore(context),
      ],
    ),
  );
}

Widget monthlyCardCore(var context) {
  return Container(
    margin: EdgeInsets.only(top: 30),
    height: 330,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        monthlyCard(context),
        monthlyCard(context),
      ],
    ),
  );
}

Widget monthlyCard(var context) {
  return Container(
    margin: EdgeInsets.only(left: 30),
    padding: EdgeInsets.all(30),
    width: MediaQuery
        .of(context)
        .size
        .width / 1.66,
    decoration: BoxDecoration(
      color: Color(0xffFFFFFF),
      borderRadius: BorderRadius.circular(25),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 70,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(120),
                  child: Image.asset("images/reminder.png")),
            ),
            Icon(
              Icons.more_horiz,
              color: Colors.grey.shade500,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "reminder4",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Text(
              "Service on",
              style: TextStyle(
                color: Colors.grey.shade500,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),

            ),
            Text(
              " 26 Apr",
              style: TextStyle(
                  color: Colors.blue.shade500,
                  fontSize: 15,
                  fontWeight: FontWeight.bold
              ),

            ),
          ],
        ),
        SizedBox(height: 20,),
        FittedBox(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "₹24,000",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              Text(
                "Last invoice amt",
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade500,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          child: Center(
            child: Text(
              "Vehicle Renewal",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 14
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Color(0xff00B3F3),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 40,
        ),
      ],
    ),
  );
}