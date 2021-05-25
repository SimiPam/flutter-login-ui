import 'package:login_app/sizes.dart';

import 'constants.dart';

class Validator {
  bool emailValidation(String value) {
    bool check = false;
    final regex = RegExp(kRegexEmail);
    final matches = regex.allMatches(value);

    for (Match match in matches) {
      if (match.start == 0 && match.end == value.length) {
        check = true;
      }
    }

    if (check) {
      return true;
    } else {
      return false;
    }
  }

  bool numberValidation(String value) {
    if (value.length > Sizes.dimens_8) {
      return true;
    } else {
      return false;
    }
  }
}
