import 'package:flutter/material.dart';

class introScreen3 extends StatefulWidget {
  const introScreen3({super.key});

  @override
  State<introScreen3> createState() => _introScreen3State();
}

class _introScreen3State extends State<introScreen3> {
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
                image: AssetImage("assets/introthree.png"),
                fit: BoxFit.cover
            )
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0,300.0,100.0,0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Text("LOOK",style: TextStyle(color: Colors.white,fontSize: 60.0,),),
                  Text("NO",style: TextStyle(color: Colors.white, fontSize: 60.0) ,),
                  Text("FURTHER", style: TextStyle(color: Colors.white, fontSize: 60.0),)

                ],
              ),
            ),
          ],
        ),
      ),
    );


  }
}
