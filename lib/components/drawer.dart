import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget implements PreferredSizeWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        // color: Colors.black,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0,30,20.0,0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                  ),
                  SizedBox(height: 10.0,),
                  Text("Hello User")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,30,20.0,0),
              child: ListTile(
                leading: Icon(Icons.edit),
                title: Text("Edit Profile"),
                onTap: (){},
              ),
            ),

            ListTile(
                leading: Icon(Icons.edit),
                title: Text("Edit Profile"),
                onTap: (){}
            ),
            ListTile(
              leading: Icon(Icons.edit),
              title: Text("Edit Profile"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.edit),
              title: Text("Edit Profile"),
              onTap: (){},
            ),

          ],
        ),
      ),
    );
  }
}
