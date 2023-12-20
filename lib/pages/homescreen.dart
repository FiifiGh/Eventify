import 'package:eventify/pages/Categoriespage.dart';
import 'package:eventify/pages/Discoverpage.dart';
import 'package:eventify/pages/Homepage.dart';
import 'package:eventify/pages/Profilepage.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}


class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  void _navigateBottomBar(int index){
    setState((){
      _selectedIndex = index;
    });
  }

  List<Widget> _pages = [

  HomeScreen(),
    Categories(),
    Discover(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20.0,0,20,20),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
             top: BorderSide(
               width: 3.0,
               color: Colors.grey.shade200
             )
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0)
            ),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.black38,
            //     spreadRadius: 0,
            //     blurRadius: 10,
            //   ),
            // ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0)
            ),
            child: BottomNavigationBar(
              // backgroundColor: Colors.grey.shade200,
              fixedColor: Colors.black,
              currentIndex: _selectedIndex,
              onTap: _navigateBottomBar,
              type: BottomNavigationBarType.fixed,
              items:<BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.category_rounded),
                  label: 'Categories',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Discover',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
