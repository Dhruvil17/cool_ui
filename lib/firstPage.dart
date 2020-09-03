import 'date.dart';
import 'moneyTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'orders.dart';
import 'usageFile.dart';

class firstPage extends StatefulWidget {
  static const id = "firstPage";
  @override
  _firstPageState createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: ListView(
            children: [
              appBar(),
              moneyList(context),
              dateBox(),
              usage(),
              orders(),
              monthlyExpense(),
            ],
          ),
        ),
      ),
    );
  }

  Widget monthlyExpense() {
    return Container(
      height: 500,
      width: double.infinity,
      child: Column(
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
          SizedBox(
            height: 30,
          ),
          expenseCardsCore(),
        ],
      ),
    );
  }

  Widget expenseCardsCore() {
    return Container(
      height: 330,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 30,
          ),
          expenseCard(
              "Fuel", "₹24,000", "₹2.00L", "3.00L", "good", "images/fuel.png"),
//          expenseCard(),
//          expenseCard()
        ],
      ),
    );
  }

  Widget expenseCard(String title, String cost, String current, String max,
      String condition, String path) {
    return Container(
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
                  style: TextStyle(color: Colors.grey.shade500,fontSize: 14),
                ),
                Text(
                    cost,
                    style: TextStyle(
                      color: Colors.blue.shade500,
                      fontWeight: FontWeight.bold,
                        fontSize: 14
                    ),
                ),
                Text(
                  " a week",
                  style: TextStyle(color: Colors.grey.shade500,fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class appBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      height: AppBar().preferredSize.height + 1.2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Good Morning,",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "Kukuh Sanjaya",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
                Container(
//                TODO:
                  alignment: Alignment.topRight,
                  height: 18,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CircleAvatar(
              child: Icon(Icons.person),
            ),
          ),
        ],
      ),
    );
  }
}
