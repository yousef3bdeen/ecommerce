import 'dart:io';

import 'package:ecommerce_app/core/constant/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: AppStringsKeys.alert.tr,
      middleText: AppStringsKeys.doYouWantToExitTheApplication.tr,
      actions: [
        ElevatedButton(
            onPressed: () {
              exit(0);
            },
            child: Text(AppStringsKeys.yes.tr)),
        ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Text(AppStringsKeys.cancle.tr)),
      ]);
  return Future.value(true);
}
