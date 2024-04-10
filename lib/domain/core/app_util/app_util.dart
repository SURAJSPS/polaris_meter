import 'package:polaris_meter/common_libs.dart';

class AppUtil {
  /// Checking bool on the base of the user input

  static bool checkInput(Field input) {
    if (input.isRequired) {
      if (input.formValue == null) return true;

      if (input.formValue == "") return true;

      if (input.meta.label.contains("Mobile Number")) {
        return validatePhoneNumber(input.formValue!);
      }
    }

    return false;
  }

  /// validate Phone Number using RegExp
  static bool validatePhoneNumber(String input) {
    const phoneRegex =
        r'^(\+?[1-9][0-9]{0,2})?[-.\s]?[1-9]\d{2,3}[-.\s]?\d{4}$';
    if (RegExp(phoneRegex).hasMatch(input) && input.length == 10) {
      return false;
    } else {
      return true;
    }
  }

  /// Read Data from json file
  static Future<Map<String, dynamic>> localJson() async {
    return ConfigReader.getForm();
  }

  /// Checking TextInputType
  static TextInputType? keyType(String? id) {
    TextInputType? keyboardType;
    if (id == "TEXT") {
      keyboardType = TextInputType.text;
    } else if (id == "INTEGER") {
      keyboardType = TextInputType.number;
    }
    return keyboardType;
  }
}
