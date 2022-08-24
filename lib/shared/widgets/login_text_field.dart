import 'package:flutter/material.dart';
import 'package:app_byte/shared/themes/app_colors.dart';
import 'package:app_byte/shared/themes/app_text_style.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
          style: AppTextStyle.text,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            filled: true,
            fillColor: AppColors.white,
            isDense: true,
          )),
    );
  }
}
