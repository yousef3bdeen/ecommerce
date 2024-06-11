import 'package:ecommerce_app/controller/test_controller.dart';
import 'package:ecommerce_app/core/class/handling_data_view.dart';
import 'package:ecommerce_app/core/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor:AppColor.primaryColor ,
      ),
      body: GetBuilder<TestController>(
        builder: ((controller) {
          return HandlingDataView(
            controller.statusRequest,
            ListView.builder(
              itemCount: controller.data.length,
              itemBuilder: ((context, index) {
                return Text("${controller.data}");
              }),
            ),
          );
        }),
      ),
    );
  }
}
