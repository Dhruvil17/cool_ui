import 'package:cool_ui/monthlyExpenseWidgets.dart';
import 'date.dart';
import 'moneyTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'orders.dart';
import 'usageFile.dart';
import 'reminder.dart';

class firstPage extends StatefulWidget {
  static const id = "firstPage";
  @override
  _firstPageState createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home,color: Colors.blue,),
          title: Text("Home",style: TextStyle(color: Colors.black),),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.trip_origin,color: Colors.grey,),
          title: Text("Trip",style: TextStyle(color: Colors.black),),
        ),
        BottomNavigationBarItem(
          icon:Icon(Icons.person,color: Colors.grey,),
          title: Text("Driver",style: TextStyle(color: Colors.black),),
        ),
        BottomNavigationBarItem(
          icon:Icon(Icons.directions_bus,color: Colors.grey,),
          title: Text("Vehicle",style: TextStyle(color: Colors.black),),
        ),
        BottomNavigationBarItem(
          icon:Icon(Icons.location_searching,color: Colors.grey,),
          title: Text("Track",style: TextStyle(color: Colors.black),),
        ),
      ]),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white,width: 3),
          borderRadius: BorderRadius.circular(30)
        ),
        child: FloatingActionButton(
          onPressed: () {  },
          child: Icon(Icons.add),
        ),
      ),
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
              monthlyExpense(context),
              reminder(context),
            ],
          ),
        ),
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
            child: Container(
              child: Stack(
                children: [
                  Container(
                    child: Icon(
                      Icons.notifications,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        "6",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    margin: EdgeInsets.only(bottom: 2),
                    alignment: Alignment.topRight,
                    height: 18,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      shape: BoxShape.circle,
                      color: Colors.blue.shade700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: CircleAvatar(
                child: Image.asset("images/person.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
