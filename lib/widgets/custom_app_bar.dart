import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(20.0),
          child: IconButton(
            icon: Icon(
              Icons.link,
              size: 35.0,
              color: Theme.of(context).accentColor,
            ),
            onPressed: () {
              print("Link pressed");
            },
          ),
        ),
      ],
    );
  }
}
