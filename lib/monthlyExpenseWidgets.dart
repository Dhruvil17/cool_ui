import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

Widget monthlyExpense(context) {
  return Container(
    height: 450,
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 40),
          child: Text(
            "Monthly Expense",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 30,),
        expenseCardsCore(context),
      ],
    ),
  );
}

Widget expenseCardsCore(var context) {
  return Container(
    height: 330,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        expenseCard(
            "Fuel", "₹24,000", "₹2.00L", "₹3.00L", "good", "images/fuel.png",context),
        expenseCard(
            "Government", "₹24,000", "₹2.00L", "₹3.00L", "good", "images/fort.png",context),
      ],
    ),
  );
}

Widget expenseCard(String title, String cost, String current, String max,
    String condition, String path,var context) {
  return Container(
    margin: EdgeInsets.only(left: 30),
    padding: EdgeInsets.all(30),
    width: MediaQuery.of(context).size.width / 1.45,
    decoration: BoxDecoration(
      color: Color(0xffF3F6FB),
      borderRadius: BorderRadius.circular(25),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 70,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  path,
                ),
              ),
            ),
            Icon(
              Icons.more_horiz,
              color: Colors.grey.shade500,
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Row(
            children: [
              Text(
                "AVG spent ",
                style: TextStyle(color: Colors.grey.shade500, fontSize: 14),
              ),
              Text(
                cost,
                style: TextStyle(
                    color: Colors.blue.shade500,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
              Text(
                " a week",
                style: TextStyle(color: Colors.grey.shade500, fontSize: 14),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Stack(
          children: [
            LinearPercentIndicator(
              width: MediaQuery.of(context).size.width / 1.45 - 60,
              animation: true,
              backgroundColor: Color(0xffE8EBF1),
              animationDuration: 1000,
              lineHeight: 35.0,
              percent: int.parse(current[1]) / int.parse(max[1]),
              linearStrokeCap: LinearStrokeCap.roundAll,
              progressColor: Color(0xffFFD14D),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8,left: 5,right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    current,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Text(
                    max,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: Offset(0,1),
                  ),
                ],
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Your fuel budget is on a ",style: TextStyle(color: Colors.grey.shade500,fontWeight: FontWeight.w500), ),
                  Text("good condition",style: TextStyle(color: Colors.grey.shade500,fontWeight: FontWeight.w500),),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}