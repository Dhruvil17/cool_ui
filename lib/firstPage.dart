import 'date.dart';
import 'moneyTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
            ],
          ),
        ),
      ),
    );
  }
  Widget orders(){
    return Container();
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
