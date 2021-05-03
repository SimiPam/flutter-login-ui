import 'package:flutter/material.dart';
import 'package:login_app/screens/my_home_page.dart';
import 'package:login_app/style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: myTheme,
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
