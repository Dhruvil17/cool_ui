import 'package:flutter/material.dart';

Widget orders() {
  return Container(
    margin: EdgeInsets.only(top: 40),
    padding: EdgeInsets.symmetric(horizontal: 30),
    child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Orders",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "See All",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        orderTile("Tirmurlala Veg", "Order ID 1", "KA 01 M 2211","₹508L",Color(0xff59D693)),
        orderTile("Sambara Fast Food", "Order ID 2", "KA 23 M 2401","₹232L",Color(0xffFFD0A5)),
        orderTile("Polar Bear", "Order ID 3", "KA 01 M 4212","₹122L",Color(0xffCBA5FF)),
      ],
    ),
  );
}

Widget orderTile(String name, String id, String unknown,String cost,Color color) {
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
              child: Text(
                name[0],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
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
                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                      ),
                      Text(
                        cost,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: color,
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text(
                              unknown,
                              style: TextStyle(
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Apr 26",
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