import 'package:eventify/components/appbar.dart';
import 'package:flutter/material.dart';

class MyNotification extends StatefulWidget {
  const MyNotification({super.key});

  @override
  State<MyNotification> createState() => _MyNotificationState();
}

class _MyNotificationState extends State<MyNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius:BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0)
            ),
          ),
          child: Column(

            children: [
              SizedBox(height: 20.0,),
              Center(child: Text("Notifications", style: TextStyle(fontSize: 22.0),))
            ,Expanded(
              child: ListView.builder(
                  itemCount: 16,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 89,
                        width: 330,
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0)
                          ),
                          color: Colors.white
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top:17.0,
                              left: 30.0,

                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 27.0,
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.fromLTRB(35,0,0,0),
                              child: Center(child: Text("Global citizen has a new event" , style: TextStyle(fontSize: 15),)),
                            ),
                            
                            Positioned(
                                top: 65,
                                left: 285,
                                child: Text("2hrs ago"))

                          ],
                        ),
                      ),
                    );
                  },
              
                ),
            ),
            ],

          ),
        ),
      ),
    );
  }
}
