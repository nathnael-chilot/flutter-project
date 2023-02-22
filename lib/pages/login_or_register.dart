import 'package:flutter/material.dart';
import 'package:instagramui/pages/login.dart';
import 'package:instagramui/pages/register.dart';

class UserLogInOrRegisterPage extends StatefulWidget {
  const UserLogInOrRegisterPage({super.key});

  @override
  State<UserLogInOrRegisterPage> createState() =>
      _UserLogInOrRegisterPageState();
}

class _UserLogInOrRegisterPageState extends State<UserLogInOrRegisterPage> {
  //initially show login page
  bool showLogInPage = true;

  //toggle between register and login page
  void tooglePages() {
    setState(() {
      showLogInPage = !showLogInPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLogInPage) {
      return UserLogInPage(
        onTap: tooglePages,
      );
    } else {
      return UserRegisterPage(
        onTap: tooglePages,
      );
    }
  }
}
