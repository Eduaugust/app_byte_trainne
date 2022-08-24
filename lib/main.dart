import 'package:app_byte/modules/home/home_page.dart';
import 'package:app_byte/modules/login/login_page.dart';
import 'package:app_byte/modules/splash/splash_page.dart';
import 'package:app_byte/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'App Byte',
        theme: ThemeData(primaryColor: AppColors.primary),
        home: SplashPage());
  }
}
