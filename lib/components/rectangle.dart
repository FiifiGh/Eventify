import 'package:flutter/material.dart';

class MyRectangle extends StatefulWidget {
  const MyRectangle({super.key});

  @override
  State<MyRectangle> createState() => _MyRectangleState();
}

class _MyRectangleState extends State<MyRectangle> {
  @override
  Widget build(BuildContext context) {
    return  Padding(padding: EdgeInsets.all(8.0),
      child: Container(
        height: 133,
        width: 117,
        decoration: BoxDecoration(
          // shape: BoxShape.circle,
          color: Colors.white,

        ),
      child: Image.asset("assets/Frame 21.png", fit: BoxFit.fill,)
      ),);
  }
}
