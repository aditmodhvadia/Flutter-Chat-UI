import 'package:flutter/material.dart';
import 'package:flutterchatui/models/models.dart';

class CircleUserPartyAvatar extends StatelessWidget {
  final User user;
  final double size;

  const CircleUserPartyAvatar({Key key, this.user, this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Stack(
          overflow: Overflow.visible,
          alignment: Alignment.center,
          children: [
            Container(
              height: size + 8,
              width: size + 8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(size / 2),
                border: Border.all(
                    color: user.isLive ? Colors.blue[500] : Colors.grey,
                    width: 3),
              ),
            ),
            Container(
              height: size,
              width: size,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(size / 2),
                image: DecorationImage(
                  image: NetworkImage(user.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
                bottom: -6,
                right: -6,
                child: CircleAvatar(
                  radius: size / 4,
                  backgroundImage: NetworkImage(user.imageUrl),
                )),
            Positioned(
              top: 4,
              left: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 4),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: user.isLive ? Colors.blue[500] : Colors.grey,
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  user.isLive ? "Live" : user.lastLive,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ]),
    );
  }
}
