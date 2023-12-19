import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:eventify/pages/intro_screens/intro_screen1.dart';
import 'package:eventify/pages/intro_screens/intro_screen2.dart';
import 'package:eventify/pages/intro_screens/intro_screen3.dart';
import 'package:eventify/pages/loginscreen.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  //control the page movement
  PageController _controller = PageController();

  //check if on the last page
  bool onLastPage = false;



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children:[ 
          //Page view
          PageView(
            onPageChanged: (index){
              setState(() {
                onLastPage = (index == 2);
              });
            },
            controller: _controller,
          children: [
            Intro_screen1(),
            introScren2(),
            introScreen3(),


          ],
        ),
          //dot indicators
          Container(
            alignment: Alignment(0,0.75),
              child: Padding(
                padding: const EdgeInsets.all(55.0),
                child: Column(
                 mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SmoothPageIndicator(controller: _controller, count: 3),
                    SizedBox(height: 20.0,),
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                      child:
                      onLastPage?
                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>Login()));
                        },
                        child: Text("DONE",style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,

                          color: Colors.white,
                        ),),
                      ) :  GestureDetector(
                        onTap: (){
                          _controller.jumpToPage(2);
                        },
                        child: Text("SKIP",style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                      ),
                   decoration: BoxDecoration(
                     border: Border.all(
                       color: Colors.white,
                       width: 2.0
                     ),
                   borderRadius: BorderRadius.circular(100.0)), )
                  ],
                ),
              ))
      ]),
    );
  }
}
