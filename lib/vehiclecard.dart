import 'package:flutter/material.dart';
import 'second.dart';
class VehicleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Expense Breakdown",
            style: t(Colors.black, 20, FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset("images/truck.png"),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(top : 15.0),
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: FittedBox(
                                  child: Text("KA 02M 2021",
                                    style: t(Colors.black,20,FontWeight.bold),
                                  ),
                                ),
                              ),
                              height: 28,
                              width: MediaQuery.of(context).size.width/3,
                              decoration: BoxDecoration(
                                color: Colors.red.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(7),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Total Km",
                                  style: t(
                                      Colors.black,
                                      10,
                                      FontWeight.w400
                                  ),
                                ),

                                Text(
                                  "  45,452",
                                  style: t(
                                    Colors.black,
                                    15,
                                    FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 19,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


