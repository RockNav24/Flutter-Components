import 'package:components/components/navbars/navbar2.dart';
import 'package:components/providers/navbar_provider.dart';
import 'package:components/screens/home_screen.dart';
import 'package:components/screens/message_screen.dart';
import 'package:components/screens/notification.dart';
import 'package:components/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List screens = [
    HomeScreen(),
    MessageScreen(),
    NotificationScreen(),
    SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CustomNavBarProvider>(
        create: (_) => CustomNavBarProvider(),
        builder: (context, _) {
          return Scaffold(
            body: Stack(
              children: [
                Consumer<CustomNavBarProvider>(
                    builder: (context, customNavBarProvider, child) {
                  return screens[customNavBarProvider.navBarIndex];
                }),
                SafeArea(
                  child: CustomNavbar2(),
                ),
              ],
            ),
            // body: Column(
            //   children: [
            //     Expanded(
            //       flex: 7,
            //       child: screens[CustomNavbar2.selectedIndex],
            //     ),
            //     Expanded(
            //       flex: 1,
            //       child: CustomNavbar2(),
            //     ),
            //   ],
            // ),
            // floatingActionButton: FloatingActionButton(
            //   child: Icon(Icons.add),
            //   onPressed: () {
            //     setState(() {});
            //   },
            // ),
            // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          );
        });
  }
}
