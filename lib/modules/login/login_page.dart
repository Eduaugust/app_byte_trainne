import 'package:app_byte/shared/widgets/login_button.dart';
import 'package:flutter/material.dart';
import 'package:app_byte/shared/themes/app_colors.dart';
import 'package:app_byte/shared/themes/app_images.dart';
import 'package:app_byte/shared/themes/app_text_style.dart';
import 'package:app_byte/shared/widgets/login_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.background,
        body: SingleChildScrollView(
          child: Container(
              width: size.width,
              height: size.height,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppImages.fundo), fit: BoxFit.cover)),
              child: Container(
                width: size.width * 0.72,
                child: Column(children: [
                  // Logo da byte com margin top
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: size.height * 0.15),
                    child: Column(
                      children: [
                        Image.asset(AppImages.logo),
                        Image.asset(AppImages.byte),
                      ],
                    ),
                  ),

                  // email
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(top: size.height * 0.05),
                    child: Text(
                      'Email',
                      style: AppTextStyle.main,
                    ),
                  ),

                  // TextFiel do login
                  LoginTextField(),

                  // senha
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Senha',
                      style: AppTextStyle.main,
                    ),
                  ),
                  // TextFiel do login
                  LoginTextField(),

                  // Esqueci Senha
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          primary: Color(0xFF545454),
                        ),
                        child: Text('Esqueci minha senha',
                            style: AppTextStyle.text)),
                  ),

                  // Entrar
                  Container(
                      alignment: Alignment.bottomLeft,
                      child: LoginButton(onTap: () {
                        print("Clicou");
                      })),

                  // Botao de entrar
                ]),
              )),
        ));
  }
}
