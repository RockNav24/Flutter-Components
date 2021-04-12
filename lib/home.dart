import 'package:components/components/navbar.dart';
import 'package:components/screens/home_screen.dart';
import 'package:components/screens/message_screen.dart';
import 'package:components/screens/notification.dart';
import 'package:components/screens/settings.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List screens = [
      HomeScreen(),
      MessageScreen(),
      NotificationScreen(),
      SettingsScreen(),
    ];
    return Scaffold(
      body: screens[CustomNavbar.selectedIndex],
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {});
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomNavbar(),
    );
  }
}
