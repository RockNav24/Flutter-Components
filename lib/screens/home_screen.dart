import 'package:components/components/cards/custom_card_with_image.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: EdgeInsets.symmetric(horizontal: 30),
          icon: Icon(Icons.filter_tilt_shift),
          onPressed: () {},
        ),
        title: Text("Home"),
        actions: [
          IconButton(
            padding: EdgeInsets.symmetric(horizontal: 30),
            icon: Icon(Icons.camera_alt_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomCardWithImage(
              title: "Welcome1",
              image: NetworkImage(
                  "https://composeclick.com/wp-content/uploads/2018/05/nature-1.jpg"),
              description:
                  "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem.",
            ),
            CustomCardWithImage(
              title: "Welcome2",
              image: NetworkImage(
                  "https://composeclick.com/wp-content/uploads/2018/05/nature-1.jpg"),
              description:
                  "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem.",
            ),
            CustomCardWithImage(
              title: "Welcome3",
              image: NetworkImage(
                  "https://composeclick.com/wp-content/uploads/2018/05/nature-1.jpg"),
              description:
                  "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem.",
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
