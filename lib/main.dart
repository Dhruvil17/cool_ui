import 'package:cool_ui/firstPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: firstPage.id,
      routes: {
        firstPage.id: (context)=>firstPage(),
      },
    );
  }
}
