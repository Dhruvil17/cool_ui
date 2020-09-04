import 'package:cool_ui/firstPage.dart';
import 'package:cool_ui/second.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: second.id,
      routes: {
        second.id:(context)=>second(),
        firstPage.id: (context)=>firstPage(),
      },
    );
  }
}
