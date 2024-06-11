import 'package:flutter/material.dart';

import '../../../core/constant/app_color.dart';

class CustomButtonLang extends StatelessWidget {
  final String textButton;
  final void Function()? onPressed;
  
  const CustomButtonLang({super.key, required this.textButton, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        color: AppColor.primaryColor,
        textColor: AppColor.white,
        onPressed: onPressed,
        child: Text(textButton, style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
