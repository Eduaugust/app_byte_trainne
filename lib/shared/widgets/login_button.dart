import 'package:app_byte/shared/themes/app_colors.dart';
import 'package:app_byte/shared/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback onTap;
  const LoginButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
            primary: AppColors.white,
            backgroundColor: AppColors.primary,
            padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5)),
        child: Text('Entrar', style: AppTextStyle.button));
  }
}
