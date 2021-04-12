import 'package:flutter/material.dart';

class CustomNavbar extends StatefulWidget {
  static int selectedIndex = 0;
  CustomNavbar({Key key}) : super(key: key);

  @override
  _CustomNavbarState createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  Widget navBarButton(
    IconData iconData,
    String text,
    int indexNum,
  ) {
    return InkWell(
      onTap: () {
        setState(() {
          CustomNavbar.selectedIndex = indexNum;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: CustomNavbar.selectedIndex == indexNum
                ? Colors.red[400]
                : Colors.grey,
          ),
          Text(
            text,
            style: TextStyle(
              color: CustomNavbar.selectedIndex == indexNum
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
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      elevation: 5,
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            navBarButton(Icons.home, "Home", 0),
            navBarButton(Icons.message_outlined, "Message", 1),
            SizedBox(),
            navBarButton(Icons.notifications_active, "Notification", 2),
            navBarButton(Icons.settings_outlined, "Settings", 3),
          ],
        ),
      ),
    );
  }
}
