import 'package:flutter/material.dart';

const Color kActiveColor = Color(0xFF4A80F0);
const Color kInactiveColor = Color(0xFF1D2A4A);
const Color kInputTextColor = Color(0xFF121421);
const Padding kCircleAvatar = Padding(
    padding: const EdgeInsets.all(15.0),
    child: CircleAvatar(
      maxRadius: 10,
      backgroundColor: kActiveColor,
      child: Icon(
        Icons.check,
        size: 13,
        color: Colors.white,
      ),
    ));

const Padding kNoCircleAvatar = Padding(
    padding: const EdgeInsets.all(15.0),
    child: CircleAvatar(
      maxRadius: 0,
      backgroundColor: Colors.white,
      child: Icon(
        Icons.check,
        size: 0,
        color: Colors.white,
      ),
    ));

const String kRegexEmail =
    "(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\\.[a-zA-Z0-9-]+\$)";
const String kRegexNo = r'^(?:[+0][1-9])?[0-9]{10,12}$';
// Container(
// width: 10,
// height: 10,
// decoration: BoxDecoration(
// shape: BoxShape.circle,
// color: kActiveColor,
// // border: Border.all(color: Colors.white)
// ),
// child: Icon(
// Icons.check,
// color: Colors.white,
// size: 13,
// ),
// ),
