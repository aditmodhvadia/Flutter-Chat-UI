import 'package:flutter/material.dart';

class CircleUserAvatar extends StatelessWidget {
  final String imageUrl;
  final double size;
  final bool isOnline;

  const CircleUserAvatar({Key key, this.imageUrl, this.size, this.isOnline})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CircleAvatar(
        radius: size,
        backgroundImage: NetworkImage(imageUrl),
      ),
      Positioned(
          bottom: 0,
          right: 0,
          child: CircleAvatar(
            radius: 7,
            backgroundColor: isOnline ? Colors.green[500] : Colors.grey[500],
          ))
    ]);
  }
}
