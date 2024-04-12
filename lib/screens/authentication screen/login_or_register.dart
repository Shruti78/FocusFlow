import 'package:flutter/material.dart';
import 'package:flutter_todo_app/screens/authentication%20screen/login_screen.dart';
import 'package:flutter_todo_app/screens/authentication%20screen/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {

  bool showloginPage = true;

  void toggle(){
    setState(() {
      showloginPage = !showloginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(showloginPage){
      return LoginPage(onTap: toggle);
    }
    else{
      return RegisterPage(onTap: toggle);
    }
  }
}