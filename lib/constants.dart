import 'package:flutter/material.dart';
import 'package:login_app/colors.dart';
import 'package:login_app/sizes.dart';

Padding inputCheck(Color color) {
  return Padding(
      padding: const EdgeInsets.all(15.0),
      child: CircleAvatar(
        maxRadius: Sizes.dimens_10,
        backgroundColor: color,
        child: Icon(
          Icons.check,
          size: Sizes.dimens_13,
          color: AppColors.whiteColor,
        ),
      ));
}

const String kRegexEmail =
    "(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\\.[a-zA-Z0-9-]+\$)";
const String kRegexNo = r'^(?:[+0][1-9])?[0-9]{10,12}$';
