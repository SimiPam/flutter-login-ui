import 'package:flutter/material.dart';
import 'package:login_app/theme/colors.dart';
import 'package:login_app/screens/login_screen.dart';
import '../theme/constants.dart';
import '../theme/sizes.dart';

class InputTextField extends StatelessWidget {
  InputTextField(
      {required this.hint,
      required this.onDiff,
      required this.checkIcon,
      required this.hideText});

  final String hint;
  final Function(String) onDiff;
  final Widget checkIcon;
  final bool hideText;

  @override
  Widget build(BuildContext context) {
    bool check = false;
    return TextFormField(
      onChanged: onDiff,
      enableSuggestions: false,
      autocorrect: false,
      obscureText: hideText,
      style: Theme.of(context).textTheme.headline5,
      decoration: InputDecoration(
        fillColor: AppColors.whiteColor,
        filled: true,
        hintText: hint,
        suffixIcon: checkIcon,
        hintStyle: Theme.of(context).textTheme.headline5,
        contentPadding: EdgeInsets.symmetric(
            vertical: Sizes.dimens_10, horizontal: Sizes.dimens_20),
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 0),
          borderRadius: BorderRadius.all(Radius.circular(Sizes.dimens_11)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 0),
          borderRadius: BorderRadius.all(Radius.circular(Sizes.dimens_11)),
        ),
      ),
    );
  }
}
