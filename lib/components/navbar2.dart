import 'package:flutter/material.dart';

class CustomNavbar2 extends StatefulWidget {
  static int selectedIndex = 0;
  CustomNavbar2({Key key}) : super(key: key);

  @override
  _CustomNavbar2State createState() => _CustomNavbar2State();
}

class _CustomNavbar2State extends State<CustomNavbar2> {
  Widget navBarButton(
    IconData iconData,
    String text,
    int indexNum,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          CustomNavbar2.selectedIndex = indexNum;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: CustomNavbar2.selectedIndex == indexNum
                ? Colors.red[400]
                : Colors.grey,
          ),
          Text(
            text,
            style: TextStyle(
              color: CustomNavbar2.selectedIndex == indexNum
                  ? Colors.red[400]
                  : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 20,
          left: MediaQuery.of(context).size.width * 0.1,
          right: MediaQuery.of(context).size.width * 0.1,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[500],
                  blurRadius: 10.0,
                  spreadRadius: 0.0,
                  offset: Offset.zero,
                )
              ],
            ),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                navBarButton(Icons.home, "Home", 0),
                navBarButton(Icons.message_outlined, "Message", 1),
                navBarButton(Icons.notifications_active, "Notification", 2),
                navBarButton(Icons.settings_outlined, "Settings", 3),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
