import 'package:flutter/material.dart';
import 'package:eventify/components/appbar.dart';
import 'package:eventify/components/drawer.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(),
      drawer: MyDrawer(),
    );
  }
}
