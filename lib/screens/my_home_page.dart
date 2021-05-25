import 'package:flutter/material.dart';
import 'package:login_app/Validator.dart';
import 'package:login_app/colors.dart';
import 'package:login_app/widgets/InputTextField.dart';

import '../constants.dart';
import '../sizes.dart';

bool kCorrectEmail = false;
bool kCorrectPass = false;

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color buttonColor = AppColors.kInactiveColor;

  Validator validator = new Validator();

  void submit(String value, int tog) {
    setState(() {
      if (tog == Sizes.dimens_1) {
        if (validator.emailValidation(value)) {
          kCorrectEmail = true;
        } else {
          kCorrectEmail = false;
        }
      } else if (tog == Sizes.dimens_2) {
        if (validator.numberValidation(value)) {
          kCorrectPass = true;
        } else {
          kCorrectPass = false;
        }
      }
    });
  }

  void _buttonChange() {
    setState(() {
      buttonColor = AppColors.kActiveColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(34.0),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: Sizes.dimens_60),
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
                    height: Sizes.dimens_80,
                  ),
                  Text(
                    "WELCOME BACK",
                    style: Theme.of(context).textTheme.headline4,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: Sizes.dimens_40,
                  ),
                  InputTextField(
                      hint: "Email Address",
                      onDiff: (value) {
                        kCorrectEmail = false;
                        submit(value, 1);
                        print(value);
                      },
                      hideText: false,
                      checkIcon: (kCorrectEmail)
                          ? inputCheck(AppColors.kActiveColor)
                          : inputCheck(AppColors.whiteColor)),
                  // checkIcon: (kCorrectEmail) ? kCircleAvatar : kNoCircleAvatar),
                  SizedBox(
                    height: Sizes.dimens_20,
                  ),
                  InputTextField(
                      hint: "Password",
                      onDiff: (value) {
                        submit(value, 2);
                        print(value);
                      },
                      hideText: true,
                      checkIcon: (kCorrectPass)
                          ? inputCheck(AppColors.kActiveColor)
                          : inputCheck(AppColors.whiteColor)),
                  SizedBox(
                    height: Sizes.dimens_20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: Sizes.dimens_16),
                    child: Material(
                      color: buttonColor,
                      borderRadius:
                          BorderRadius.all(Radius.circular(Sizes.dimens_11)),
                      elevation: Sizes.dimens_5,
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
                    height: Sizes.dimens_10,
                  ),
                  Text(
                    "Reset Password",
                    style: Theme.of(context).textTheme.headline3,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
