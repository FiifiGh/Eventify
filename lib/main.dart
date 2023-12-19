import 'package:eventify/pages/homescreen.dart';
import 'package:eventify/pages/signinscreen.dart';
import 'package:flutter/material.dart';
import 'package:eventify/pages/onboarding_screen.dart';
import 'package:eventify/pages/loginscreen.dart';

void main(){
  runApp(Eventify());
}

class Eventify extends StatelessWidget {
  const Eventify({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,


      routes: {
        "/" : (context) => OnboardingScreen(),
        "/login" : (context) => Login(),
        "/signin" : (context) => Signin(),
        "/home" : (context) => Homepage(),


      },
    );
  }
}




