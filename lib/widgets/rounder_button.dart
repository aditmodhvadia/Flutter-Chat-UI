import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final double width;
  final Color color;
  final Color textColor;

  const RoundedButton(
      {Key key,
      @required this.text,
      @required this.onPressed,
      @required this.color,
      this.textColor = Colors.white,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: RaisedButton(
        shape: StadiumBorder(),
        onPressed: onPressed,
        elevation: 0,
        color: color,
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
