import 'package:flutter/material.dart';

class MySquare extends StatefulWidget {
  final String name;

   MySquare({super.key, required this.name});



  @override
  State<MySquare> createState() => _MySquareState();
}



class _MySquareState extends State<MySquare> {





  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(vertical: 8.0),
    child: Container(
      height: 123,
      width: 317,
      color: Colors.deepPurple[200],
        child: Stack(
          children: [Image.asset("assets/trending.png", width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,),
            Positioned(
              top: 12.0,
              left: 295.0,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.only(
                topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0)
              ),
                  color: Colors.white,

                ),
             ),
            ),
            Positioned(
              top: 80.0,
              left: 265.0,
              child: IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {  },
                color: Colors.white,
              )
            ),
            Positioned(
                top: 80.0,
                left: 295.0,
                child: IconButton(
                  icon: Icon(Icons.bookmarks_outlined),
                  onPressed: () {  },
                  color: Colors.white,
                )
            ),
            Center(
              child: TextButton(
                onPressed: () {  },
                child: Text("${widget.name}",style: TextStyle(fontSize: 30, color: Colors.white ),),

              ),
            )
          ],

        )

    ),);
  }
}
