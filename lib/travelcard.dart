import 'package:flutter/material.dart';
import 'second.dart';

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
        SizedBox(
          height: 15,
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 19,
              ),
            ],
          ),
          child: Image.asset("images/map.PNG"),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          margin: EdgeInsets.only(left: 30),
          child: Text(
            "Details",
            style: t(Colors.black, 20, FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        travelCard(),
      ],
    );
  }
}

class travelCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 13,
            ),
          ],
        ),
        padding: EdgeInsets.fromLTRB(15, 25, 15, 25),
        height: 180,
        width: MediaQuery.of(context).size.width - 60,
        child: Row(
          children: [
            Expanded(
              flex: 9,
              child: Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      child: Text(
                        "KA 01J 1133",
                        style: t(Colors.black, 18, FontWeight.w400),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FittedBox(
                          child: Text(
                            "From",
                            style: t(Colors.grey.shade500, 10, FontWeight.w500),
                          ),
                        ),
                        SizedBox(height: 20),
                        FittedBox(
                          child: Text(
                            "Sharma Transports",
                            style: t(Colors.black, 15, FontWeight.w500),
                          ),
                        ),
                        FittedBox(
                          child: Text(
                            "Bengaluru",
                            style: t(Colors.black, 15, FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 11,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset("images/person.png"),
                      ),
                      Flexible(
                        child: Text(
                          "Ambarao GodBole",
                          overflow: TextOverflow.ellipsis,
                          style: t(Colors.black, 15, FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FittedBox(
                          child: Text(
                            "To",
                            style: t(Colors.grey.shade500, 10, FontWeight.w500),
                          ),
                        ),
                        SizedBox(height: 20,),
                        FittedBox(
                          child: Text(
                            "Tilak Exports Company",
                            style: t(Colors.black, 15, FontWeight.w500),
                          ),
                        ),
                        FittedBox(
                          child: Text(
                            "Mumbai",
                            style: t(Colors.black, 15, FontWeight.w500),
                          ),
                        ),
                      ],
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
}