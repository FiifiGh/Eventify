import 'dart:ui';
import 'package:eventify/components/textfield.dart';
import 'package:eventify/pages/homescreen.dart';
import 'package:eventify/pages/loginscreen.dart';
import 'package:flutter/material.dart';

class Signin extends StatelessWidget {
  Signin({super.key});


  final usernameController = TextEditingController();
  final passwordController = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image



          ColorFiltered(

            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5), // Adjust the opacity as needed
              BlendMode.darken, // You can also try BlendMode.multiply
            ),
            child: Image.asset(
              'assets/login.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          // Overlay with rounded square and login form
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(49.0),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  width: 300.0,
                  height: 257.0,
                  color: Colors.white10.withOpacity(0.16), // Adjust the opacity as needed
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20.0),
                      // Your login form components go here
                      Mytextfield(controller: usernameController, hintText: "Username", obscureText: false),
                      SizedBox(height: 40.0),
                      Mytextfield(controller: passwordController, hintText: "Password", obscureText: true),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,0,0,260),
            child: Center(
              child: CircleAvatar(
                child: Icon(Icons.person , size: 50.0,color: Colors.black,),
                backgroundColor: Colors.white,
                radius: 30.0,
              ),
            ),
          )
          ,Padding(
            padding: const EdgeInsets.fromLTRB(0, 470, 0, 0.0),
            child: Center(child: ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> Homepage()));
            }, child: Text("LOG IN",style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0
            ),),
              style:ButtonStyle(
                  fixedSize: MaterialStateProperty.all<Size>(
                      Size(173.0, 50.0)
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green), // Set background color
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), // Adjust the border radius to make it a square
                    ),
                  )),
            ),),),SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 580, 0, 0.0),
            child: Center(
              child: Text("New here? Create an account",style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0
              ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 650, 0, 10.0),
            child: Center(
              child: TextButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>Login()));
              }, child: Text("Sign Up", style: TextStyle(
                  color: Colors.green,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w900
              ),)),
            ),
          )
        ],
      ),
    );
  }
}
