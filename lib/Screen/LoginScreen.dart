import 'package:flutter/material.dart';

import '../Widgets/LoginWidget.dart';

class LoginPage extends StatelessWidget {
  static const routeName='/loginpage'; 
  
  @override

  

  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
            title:Text("Create Account"),
            centerTitle: true,
        ),
      body: CreateAccountWidget(),
    );
  }
}