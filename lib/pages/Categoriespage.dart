import 'package:flutter/material.dart';
import 'package:eventify/components/appbar.dart';
import 'package:eventify/components/drawer.dart';
import 'package:eventify/components/searchbar.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';


class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

List colors = ["eight","ten","nine",];
List searches = ["AFRO","POOL","TIDAL;","HOUSE" ];


class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(),
      drawer: MyDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25.0,0,25.0,0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MySearchBar(),
                SizedBox(height: 20.0),
                Text("Recent Searches"),
                SizedBox(height: 10.0),
            
                Container(
                  height: 29,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: searches.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,10,0),
                        child: Container(
                          width: 79,
                          height: 29,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                                borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(child: Text(searches[index], style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),)),
            
                        ),
                      );
                    },
            
                  ),
                ),
            
                SizedBox(height: 100.0),
            
            
                Text("Categories"),
                SizedBox(height: 20.0),
            
                Swiper(
                    itemWidth: 311,
                    itemHeight: 315,
                    loop: true,
                    duration: 10,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index){
                      return Container(
                        width: 311,
                        height: 315,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/${colors[index]}.png'),),
                          borderRadius: BorderRadius.circular(20)
                        ),
                      );
                    },
                    itemCount: colors.length,
                layout: SwiperLayout.STACK,)
            
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
