import 'package:flutter/material.dart';

import './ui/user_info_screen.dart';






void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
         home: UserInfoScreen(),

     
    );
  }
}

