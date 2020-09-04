import 'package:flutter/material.dart';
import 'second.dart';

class expenseBreakdown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            "Expense Breakdown",
            style: t(Colors.black, 20, FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Container(
                height: 9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                  ),
                  color: Color(0xffFFCB9B),
                ),
                width: getWidth(context, 0.25),
              ),
              Container(
                height: 9,
                decoration: BoxDecoration(
                  color: Color(0xffFF8385),
                ),
                width: getWidth(context, 0.2),
              ),
              Container(
                height: 9,
                decoration: BoxDecoration(
                  color: Color(0xff2684FF),
                ),
                width: getWidth(context, 0.15),
              ),
              Container(
                height: 9,
                decoration: BoxDecoration(
                  color: Color(0xff47D187),
                ),
                width: getWidth(context, 0.15),
              ),
              Container(
                height: 9,
                decoration: BoxDecoration(
                  color: Color(0xff9C8BFF),
                ),
                width: getWidth(context, 0.15),
              ),
              Container(
                height: 9,
                decoration: BoxDecoration(
                  color: Color(0xffC1C7D0),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                width: getWidth(context, 0.10),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          ExpenseCard(
              "Hotel Charges",
              "06 Transactions",
              "₹98,000",
              "10% of Invoice",
              Color(0xffFFCB9B)
          ),
          ExpenseCard(
              "Compilance",
              "08 Transactions",
              "₹18,000",
              "0.4% of Invoice",
              Color(0xffFF8385)
          ),
          ExpenseCard(
              "Subscription Charges",
              "01 Transactions",
              "₹48,000",
              "05% of budget",
              Color(0xff2684FF)
          ),
          ExpenseCard(
              "Penalty",
              "38 Transactions",
              "₹10,000",
              "0.5% of budget",
              Color(0xff47D187)
          ),
          ExpenseCard(
              "Maintenance",
              "64 Transactions",
              "₹16,00,008",
              "30% of budget",
              Color(0xff9C8BFF)
          ),
          ExpenseCard(
              "Others",
              "04 Transactions",
              "₹16,000",
              "01% of budget",
              Color(0xffC1C7D0)
          ),
        ],
      ),
    );
  }
}



Widget ExpenseCard(String name, String id, String cost, String b, Color color) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: color,
            ),
            child: Center(
              child: name == "Others"
                  ? FittedBox(
                      child: Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                      size: 25,
                    ))
                  : Container(),
            ),
          ),
        ),
        Expanded(
          flex: 13,
          child: Container(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 16),
                      ),
                      Text(
                        cost,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        id,
                        style: TextStyle(
                          color: Colors.grey.shade500,
                        ),
                      ),
                      Text(
                        b,
                        style: TextStyle(
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
