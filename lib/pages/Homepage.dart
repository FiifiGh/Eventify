import 'package:eventify/components/appbar.dart';
import 'package:eventify/components/drawer.dart';
import 'package:eventify/components/rectangle.dart';
import 'package:eventify/components/searchbar.dart';
import 'package:eventify/components/square.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List _trending = [
  "trending1",
  "trending2",
  "trending3",
  "trending4"
];


class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(),
      drawer: MyDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25.0,0,25.0,0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MySearchBar(),
              SizedBox(height: 20.0,),
              Text("Bookmark"),
              SizedBox(height: 20.0,),

              Expanded(
                flex: 1,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:_trending.length,
                  itemBuilder: (BuildContext context, int index) {
                    return MyRectangle();
                  },

                ),
              ),
              SizedBox(height: 20.0,),

            Text("Trending"),
              SizedBox(height: 20.0,),

            Expanded(
              flex: 3,
              child: ListView.builder(
                itemCount: _trending.length,
                itemBuilder: (BuildContext context, int index) {
                  return MySquare(name: 'AFRO NATION',);
                },

              ),
            )


            ],
          ),
        ),
      ),
    );
  }
}
