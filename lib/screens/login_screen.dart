import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_app/services/Validator.dart';
import 'package:login_app/theme/colors.dart';
import 'package:login_app/widgets/InputTextField.dart';

import '../theme/constants.dart';
import '../theme/sizes.dart';

bool kCorrectEmail = false;
bool kCorrectPass = false;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Color _buttonColor = AppColors.kInactiveColor;

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
      _buttonColor = AppColors.kActiveColor;
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
                  buttonWidget(
                      buttonAction: _buttonChange,
                      buttonColor: _buttonColor,
                      buttonText: "Sign In"),
                  Text(
                    'Forgot Password?',
                    style: Theme.of(context).textTheme.headline2,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: Sizes.dimens_10,
                  ),
                  bottomText(
                      context: context,
                      firstText: 'Don\'t have an account?',
                      secondText: ' Sign up'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
