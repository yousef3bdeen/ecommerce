import 'package:ecommerce_app/core/constant/app_strings.dart';
import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return AppStringsKeys.invalidUsername.tr;
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return AppStringsKeys.invalidEmail.tr;
    }
  }
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return AppStringsKeys.invalidPhone.tr;
    }
  }

  // if (type == "password") {
  //   if (val.contains('@') ||
  //       val.contains('#') ||
  //       val.contains('!') ||
  //       val.contains('%') ||
  //       val.contains('&') ||
  //       val.contains('9') ||
  //       val.contains('8') ||
  //       val.contains('7') ||
  //       val.contains('6') ||
  //       val.contains('5') ||
  //       val.contains('4') ||
  //       val.contains('1') ||
  //       val.contains('2') ||
  //       val.contains('3')) {
  //     return AppStringsKeys.invalidPassword.tr;
  //   }
  // }

  if (val.isEmpty) {
    return AppStringsKeys.cantBeEmpty.tr;
  }

  if (val.length < min) {
    return '${AppStringsKeys.cantBeLessThan.tr} $min';
  }

  if (val.length > max) {
    return '${AppStringsKeys.cantBeLargerThan.tr} $max';
  }
}
