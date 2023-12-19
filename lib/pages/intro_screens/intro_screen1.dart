import 'package:flutter/material.dart';

class Intro_screen1 extends StatefulWidget {
  const Intro_screen1({super.key});

  @override
  State<Intro_screen1> createState() => _Intro_screen1State();
}

class _Intro_screen1State extends State<Intro_screen1> {
  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.black.withOpacity(0.3), // Adjust the opacity as needed
        BlendMode.darken, // You can also try BlendMode.multiply
      ),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/one.png"),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Image(image: AssetImage("assets/logo1.png")),
            ),
            Container(
              alignment: Alignment(-0.7,0.0),

              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,90.0,0,0),
                child: Text("ARE\nYOU\nA PARTY\nPERSON",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 60.0,

                  ),),
              ),
            )
          ],
        ),
        // color: Colors.pink,
      ),
    );
  }
}
