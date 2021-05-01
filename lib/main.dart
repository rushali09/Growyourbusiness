import 'package:flutter/material.dart';
import './Screen/splash.dart';
import './Screen/LoginScreen.dart';
import './Screen/latest_design_screen.dart';
import './src/ui/home_screen.dart';
import './Screen/Offer_generator.dart';





void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
         home: SplashScreen(),

         routes: {
           LoginPage.routeName: (context)=>LoginPage(),
           LatestDesignScreen.routeName: (context)=>LatestDesignScreen(),
           HomeScreen.routeName: (context)=>HomeScreen(),
           OfferG.routeName: (context)=>OfferG(),
         },
    );
  }
}

