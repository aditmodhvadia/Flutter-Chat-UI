import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterchatui/models/models.dart';
import 'package:flutterchatui/screens/FriendDetailScreen.dart';
import 'package:flutterchatui/widgets/widgets.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(),
          _FriendsHeader(),
          _FriendsList(friends: friends)
        ],
      ),
    );
  }
}

class _FriendsList extends StatelessWidget {
  final List<FriendsModel> friends;

  _FriendsList({this.friends});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: friends.length,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final friend = friends[index];
          return Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleUserAvatar(
                  imageUrl: friend.user.imageUrl,
                  size: 30.0,
                  isOnline: friend.user.isOnline,
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 2,
                            child: _getNameAndMessage(friend),
                          ),
                          Expanded(flex: 1, child: Container()),
                          friend.isFriend
                              ? IconButton(
                                  icon: Icon(
                                    Icons.navigate_next,
                                    size: 24,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    print("Next pressed");
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                FriendDetailScreen(
                                                    friend: friend)));
                                  })
                              : Row(
                                  children: [
                                    RoundedButton(
                                      onPressed: () {
                                        print('Add pressed');
                                      },
                                      width: 60,
                                      text: 'Add',
                                      color: Theme.of(context).accentColor,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    RoundedButton(
                                      width: 75,
                                      text: 'Cancel',
                                      color: Colors.grey[500],
                                      onPressed: () {
                                        print('Cancel pressed');
                                      },
                                    )
                                  ],
                                )
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Divider(
                        color: Colors.grey[800],
                        thickness: 2.0,
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}

Widget _getNameAndMessage(FriendsModel friend) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        friend.user.name,
        style: TextStyle(color: Colors.white),
      ),
      const SizedBox(
        height: 8.0,
      ),
      Text(
        friend.isFriend
            ? friend.user.isOnline ? friend.lastMsg : "Offline"
            : "New",
        style: TextStyle(color: Colors.grey[700]),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      )
    ],
  );
}

class _FriendsHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Friends',
            style: TextStyle(color: Colors.white, fontSize: 24.0),
          ),
          IconButton(
            color: Colors.white,
            icon: Icon(
              Icons.search,
              size: 35.0,
            ),
            onPressed: () {
              print("Search clicked");
            },
          ),
        ],
      ),
    );
  }
}
