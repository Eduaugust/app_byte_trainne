import 'package:app_byte/shared/themes/app_colors.dart';
import 'package:app_byte/shared/themes/app_images.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(AppImages.fundo),
        fit: BoxFit.cover,
      )),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.logo),
            Image.asset(AppImages.byte),
          ],
        ),
      ),
    ));
  }
}
