import 'package:eventify/pages/notifications.dart';
import 'package:flutter/material.dart';

class MyAppbar extends StatefulWidget implements PreferredSizeWidget {
  @override
  _MyAppbarState createState() => _MyAppbarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _MyAppbarState extends State<MyAppbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0,0,10,0),
      child: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.bookmarks_outlined), color: Colors.black),
          IconButton(onPressed: (){
            Navigator.pushNamed(context, "/notifications");

          }, icon: Icon(Icons.notifications), color: Colors.black),
          SizedBox(width: 8.0,),
          CircleAvatar(
            backgroundColor: Colors.black,
            radius: 12.0,
          ),
          SizedBox(width: 20.0,)
        ],
      ),
    );
  }
}
