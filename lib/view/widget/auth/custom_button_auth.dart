import 'package:ecommerce_app/core/constant/app_color.dart';
import 'package:flutter/material.dart';

class CustomButtonAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButtonAuth({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),

      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        padding: const EdgeInsets.all(13),
        onPressed: onPressed,
        color: AppColor.primaryColor,
        child: Text(text),
      ),
    );
  }
}
