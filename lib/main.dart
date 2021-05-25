import 'package:flutter/material.dart';
import 'package:login_app/screens/login_screen.dart';
import 'package:login_app/screens/registeration_screen.dart';
import 'package:login_app/theme/style.dart';

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
      home: OnboardingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
