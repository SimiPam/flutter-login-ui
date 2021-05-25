import 'package:customtogglebuttons/customtogglebuttons.dart';
import 'package:flutter/material.dart';
import 'package:login_app/services/Validator.dart';
import 'package:login_app/theme/colors.dart';
import 'package:login_app/widgets/InputTextField.dart';

import '../theme/constants.dart';
import '../theme/sizes.dart';

bool kCorrectEmail = false;
bool kCorrectPass = false;

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  Color _buttonColor = AppColors.kInactiveColor;

  Validator validator = new Validator();

  List<bool> _isSelected = [false, false];

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
                      'Sign Up',
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
                        hint: "Full Name",
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
                    // CustomToggleButtons(
                    //   isSelected: _isSelected,
                    //   children: <Widget>[
                    //     Icon(Icons.add),
                    //     Icon(Icons.remove),
                    //   ],
                    //   onPressed: (index) {
                    //     setState(() {
                    //       _isSelected[index] = !_isSelected[index];
                    //     });
                    //   },
                    // ),
                    SizedBox(
                      height: Sizes.dimens_20,
                    ),
                    buttonWidget(
                        buttonAction: _buttonChange,
                        buttonColor: _buttonColor,
                        buttonText: "Sign Up"),
                    bottomText(
                        context: context,
                        firstText: 'Already registered?',
                        secondText: ' Sign In'),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
