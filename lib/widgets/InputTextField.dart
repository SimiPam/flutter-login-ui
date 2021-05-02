import 'package:flutter/material.dart';
import 'package:login_app/screens/my_home_page.dart';
import '../constants.dart';

class InputTextField extends StatelessWidget {
  InputTextField(
      {required this.hint, required this.onDiff, required this.checkIcon});

  final String hint;
  final Function(String) onDiff;
  final Widget checkIcon;

  @override
  Widget build(BuildContext context) {
    bool check = false;
    return TextField(
      onChanged: onDiff,
      style: Theme.of(context).textTheme.headline5,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: hint,
        suffixIcon: checkIcon,
        hintStyle: Theme.of(context).textTheme.headline5,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 0),
          borderRadius: BorderRadius.all(Radius.circular(11.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 0),
          borderRadius: BorderRadius.all(Radius.circular(11.0)),
        ),
      ),
    );
  }
}
