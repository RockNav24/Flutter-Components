import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String tag;
  const DetailsScreen({Key key, this.tag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Hero(
        tag: tag,
        child: Container(
          child: Image.network(
              "https://composeclick.com/wp-content/uploads/2018/05/nature-1.jpg"),
        ),
      ),
    );
  }
}
