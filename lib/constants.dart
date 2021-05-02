import 'package:flutter/material.dart';

const Color kActiveColor = Color(0xFF4A80F0);
const Color kInactiveColor = Color(0xFF1D2A4A);
const Color kInputTextColor = Color(0xFF121421);

Padding inputCheck(Color color) {
  return Padding(
      padding: const EdgeInsets.all(15.0),
      child: CircleAvatar(
        maxRadius: 10,
        backgroundColor: color,
        child: Icon(
          Icons.check,
          size: 13,
          color: Colors.white,
        ),
      ));
}

const String kRegexEmail =
    "(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\\.[a-zA-Z0-9-]+\$)";
const String kRegexNo = r'^(?:[+0][1-9])?[0-9]{10,12}$';
