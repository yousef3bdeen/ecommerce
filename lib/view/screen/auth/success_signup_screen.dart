import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/success_signup_controller.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_strings.dart';
import '../../widget/auth/custom_button_auth.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller = Get.put(SuccessSignUpControllerImp()); 
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.white,
        elevation: 0,
        title: Text(AppStringsKeys.success.tr,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Center(
              child: Icon(Icons.check_circle_outline,size:200,color: AppColor.primaryColor,),

            ),
               Text(AppStringsKeys.congtatulationsKey.tr,style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 30),),
               Text(AppStringsKeys.successfullyRegistered.tr,style: Theme.of(context).textTheme.bodyLarge),
              const Spacer(),
              Container(
                padding: const EdgeInsets.only(bottom: 30),
                width: double.infinity,
                child: CustomButtonAuth(
                  text: AppStringsKeys.goToLogin.tr,
                  onPressed: (){
                    controller.goToLogin();
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
