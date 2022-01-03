import 'dart:io';

import 'package:flutter/material.dart';
import 'package:iorder/constants/constants.dart' as constants;
import 'package:iorder/ui_main/homepage.dart';
import 'package:iorder/ui_main/auth/login.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                      child: Column(
                        children: [
                          Text(
                            "Welcome to iOrder",
                            style: theme.textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Create your account",
                            style: theme.textTheme.bodyText2!.copyWith(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(hintText: 'Full Name'),
                      keyboardType: TextInputType.emailAddress,
                      maxLines: 1,
                    ),
                    const SizedBox(
                      height: 15,
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
                          "Register",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "Terms & Conditions",
                        style: theme.textTheme.caption!.copyWith(color: constants.linkColor),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                    },
                    child: Text(
                      "Log In",
                      style: theme.textTheme.bodyText1!.copyWith(color: constants.linkColor, fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
