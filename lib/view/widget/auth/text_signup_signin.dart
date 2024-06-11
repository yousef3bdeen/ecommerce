import 'package:flutter/material.dart';

import '../../../core/constant/app_color.dart';

class customTextSignUpOrSignIn extends StatelessWidget {
  final String text;
  final String text2;
  final void Function() onTap;
  const customTextSignUpOrSignIn({super.key, required this.text, required this.onTap, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text),
        InkWell(
          onTap: onTap,
          child: Text(
            text2,
            style: const TextStyle(
                color: AppColor.primaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
