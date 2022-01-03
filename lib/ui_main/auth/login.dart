import 'dart:io';

import 'package:flutter/material.dart';
import 'package:iorder/constants/constants.dart' as constants;
import 'package:iorder/ui_main/auth/forgot_password.dart';
import 'package:iorder/ui_main/homepage.dart';
import 'package:iorder/ui_main/auth/register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: constants.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Expanded(
                  child: ListView(
                children: [
                  Center(
                    child: Text(
                      "Log In",
                      style: theme.textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(hintText: 'Email'),
                    keyboardType: TextInputType.emailAddress,
                    maxLines: 1,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Password',
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    maxLines: 1,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()));
                      },
                      child: Text(
                        "Forgot Password?",
                        style: theme.textTheme.caption!.copyWith(color: constants.linkColor),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                    },
                    child: Container(
                      height: Platform.isIOS ? 70 : 60,
                      color: constants.mainColorShade8,
                      alignment: Alignment.center,
                      child: const Text(
                        "Login",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              )),
              Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen()));
                    },
                    child: Text(
                      "Register an account",
                      style: theme.textTheme.bodyText1!.copyWith(color: constants.linkColor, fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          ),
        ),
      ),
      // bottomSheet: Align(
      //   alignment: Alignment.bottomCenter,
      //   child: TextButton(
      //       onPressed: () {
      //         Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen()));
      //       },
      //       child: Text(
      //         "Register an account",
      //         style: theme.textTheme.bodyText1!.copyWith(color: constants.linkColor, fontWeight: FontWeight.bold),
      //       )),
      // ),
    );
  }
}
