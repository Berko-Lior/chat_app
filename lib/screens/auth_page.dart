import 'package:chat_app/screens/registration_screen.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class AuthPage extends StatefulWidget {
  AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) => isLogin
      ? LoginScreen(onClickedSignUp: toggel)
      : RegistrationScreen(onClickedLogIn: toggel);

  void toggel() => setState(
        () {
          isLogin = !isLogin;
        },
      );
}
