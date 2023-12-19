import 'package:flutter/material.dart';

class introScren2 extends StatefulWidget {
  const introScren2({super.key});

  @override
  State<introScren2> createState() => _introScren2State();
}

class _introScren2State extends State<introScren2> {
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
                image: AssetImage("assets/introtwo.png"),
                fit: BoxFit.cover
            )
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0,220.0,100.0,0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text("OR",style: TextStyle(
                    color: Colors.white,
                      fontSize: 60.0
                  ),),
                  Text("YOU ARE",style: TextStyle(color: Colors.white,fontSize: 60.0,),),
                  Text("JUST",style: TextStyle(color: Colors.white, fontSize: 60.0) ,),
                  Text("BORED?", style: TextStyle(color: Colors.white, fontSize: 60.0),)

                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}
