import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterchatui/models/models.dart';
import 'package:flutterchatui/widgets/widgets.dart';

class FriendDetailScreen extends StatelessWidget {
  final FriendsModel friend;

  const FriendDetailScreen({Key key, @required this.friend}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _FriendsDetailHeader(),
              CircleUserPartyAvatar(
                user: friend.user,
                size: 100,
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                friend.user.name,
                style: TextStyle(color: Colors.white, fontSize: 32),
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                width: 240,
                child: Text(
                  friend.user.desc,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              _BlurredCardContainer(
                child: Text(
                  friend.user.post,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white54),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              _BlurredCardContainer(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Message",
                      style: TextStyle(
                          color: Theme.of(context).accentColor, fontSize: 18),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.open_in_new,
//                          size: 16,
                          color: Theme.of(context).accentColor,
                        ),
                        onPressed: () {})
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _BlurredCardContainer extends StatelessWidget {
  final Widget child;

  const _BlurredCardContainer({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 32),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white10,
      ),
      padding: EdgeInsets.all(16),
      child: child,
    );
  }
}

class _FriendsDetailHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.grey,
                size: 28,
              ),
              onPressed: () {
                print('Back pressed');
                Navigator.of(context).pop();
              }),
          IconButton(
              icon: Icon(
                Icons.more_horiz,
                color: Colors.grey,
                size: 28,
              ),
              onPressed: () {
                print('Back pressed');
              })
        ],
      ),
    );
  }
}
