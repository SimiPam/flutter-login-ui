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
    bool check = false;
    if (value.length > 8) {
      return true;
    } else {
      return false;
    }
  }
}
