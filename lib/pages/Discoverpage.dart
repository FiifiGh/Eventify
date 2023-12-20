import 'package:flutter/material.dart';
import 'package:eventify/components/appbar.dart';
import 'package:eventify/components/drawer.dart';
import 'package:eventify/components/searchbar.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:eventify/components/square.dart';


class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}


class _DiscoverState extends State<Discover> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay){
    setState(() {
      today = day;
    });
  }
  List searches = ["All","Corporate","family","Club","Beach","House", ];
  List _trending = [
    "trending1",
    "trending2",
    "trending3",
    "trending4"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(),
      drawer: MyDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25.0,0,25.0,0),
          child: Column(
            children: [
              MySearchBar(),
              // Text("Selected Day " + today.toString().split(" ")[0]),
              TableCalendar(
                headerStyle: HeaderStyle(
                  titleCentered: true,
                  formatButtonVisible: false
                ),
                  selectedDayPredicate: (day) => isSameDay(day,today),
                  availableGestures: AvailableGestures.all,
                  rowHeight: 35,
                  focusedDay: today,
                  firstDay: DateTime.utc(2023,1,1),
                  lastDay: DateTime.utc(2050,1,1),
              onDaySelected: _onDaySelected,),
              SizedBox(height: 20.0,)
            ,
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  height: 29,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: searches.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,10,0),
                        child: Container(
                          width: 67,
                          height: 19,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(child: Text(searches[index], style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w700),)),

                        ),
                      );
                    },

                  ),
                ),
              ),
            SizedBox(height: 20.0,)
            ,Expanded(
              child: ListView.builder(
                  itemCount: _trending.length,
                  itemBuilder: (BuildContext context, int index) {
                    return MySquare(name: 'AFRO NATION',);
                  },

                ),
            )],
          ),
        ),
      ),
    );
  }
}
