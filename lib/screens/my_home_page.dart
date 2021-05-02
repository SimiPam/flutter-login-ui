import 'package:flutter/material.dart';
import 'package:login_app/Validator.dart';
import 'package:login_app/widgets/InputTextField.dart';

import '../constants.dart';

bool kCorrectEmail = false;

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color buttonColor = kInactiveColor;

  void submit2(String value, String regexSource) {
    bool check = false;
    setState(() {
      final regex = RegExp(regexSource);
      final matches = regex.allMatches(value);

      for (Match match in matches) {
        if (match.start == 0 && match.end == value.length) {
          check = true;
        }
      }

      if (check) {
        kCorrectEmail = true;
      } else {
        kCorrectEmail = false;
      }
    });
  }

  Validator validator = new Validator();

  void submit(String value, int tog) {
    setState(() {
      if (tog == 1) {
        if (validator.emailValidation(value)) {
          kCorrectEmail = true;
        } else {
          kCorrectEmail = false;
        }
      } else if (tog == 2) {
        if (validator.numberValidation(value)) {
          kCorrectEmail = true;
        } else {
          kCorrectEmail = false;
        }
      }
    });
  }

  void _buttonChange() {
    setState(() {
      buttonColor = kActiveColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(34.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Sign In',
              style: Theme.of(context).textTheme.headline1,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              "WELCOME BACK",
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            // InputTexts('Enter your email'),
            SizedBox(
              height: 20.0,
            ),
            InputTextField(
                hint: "Email Address",
                onDiff: (value) {
                  kCorrectEmail = false;
                  submit(value, 1);
                  print(value);
                },
                checkIcon: (kCorrectEmail) ? kCircleAvatar : kNoCircleAvatar),
            SizedBox(
              height: 20,
            ),
            InputTextField(
                hint: "Password",
                onDiff: (value) {
                  submit(value, 2);
                  print(value);
                },
                checkIcon: (kCorrectEmail) ? kCircleAvatar : kNoCircleAvatar),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: buttonColor,
                borderRadius: BorderRadius.all(Radius.circular(11.0)),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: _buttonChange,
                  child: Text(
                    'Sign In',
                  ),
                ),
              ),
            ),
            Text(
              'Forgot Password?',
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Reset Password",
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}