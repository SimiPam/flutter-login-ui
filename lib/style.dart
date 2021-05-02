import 'package:flutter/material.dart';

import 'constants.dart';

TextStyle _subheading = TextStyle(
  fontSize: 11,
  color: Colors.white,
  fontWeight: FontWeight.w500,
  letterSpacing: 1.2,
);

TextStyle _heading = TextStyle(
  fontSize: 16,
  color: Colors.white,
  fontWeight: FontWeight.w700,
);

TextStyle _subheading2 = TextStyle(
  fontSize: 10,
  color: Colors.white,
  fontWeight: FontWeight.w400,
);

TextStyle _subheading3 = TextStyle(
  fontSize: 10,
  color: kActiveColor,
  fontWeight: FontWeight.w700,
);

TextStyle _hintTextSyle = TextStyle(
  fontSize: 12,
  color: kInputTextColor,
  fontWeight: FontWeight.w400,
);

ThemeData myTheme = ThemeData.dark().copyWith(
  accentColor: Colors.blue,
  scaffoldBackgroundColor: Color(0xFF121421),
  textTheme: TextTheme(
    headline4: _subheading,
    headline1: _heading,
    headline2: _subheading2,
    headline3: _subheading3,
    headline5: _hintTextSyle,
  ),
);
