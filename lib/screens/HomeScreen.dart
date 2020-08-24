import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterchatui/models/models.dart';
import 'package:flutterchatui/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          _SectionHeader(
            title: 'Parties',
          ),
          _UserParties(friends: friends),
          _SectionHeader(
            title: 'Your parties',
          ),
          _YourParties(parties: parties)
        ],
      ),
    );
  }
}

class _UserParties extends StatelessWidget {
  final List<FriendsModel> friends;

  _UserParties({this.friends});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...friends
              .map(
                (friend) => Column(
                  children: [
                    CircleUserPartyAvatar(
                      size: 90,
                      user: friend.user,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      width: 105,
                      child: Text(
                        friend.user.name +
                            (friend.user.isLive ? " out now" : ""),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: friend.user.isLive
                                ? Colors.blue[500]
                                : Colors.white),
                      ),
                    )
                  ],
                ),
              )
              .toList()
        ],
      ),
    );
  }
}

class _YourParties extends StatelessWidget {
  final List<Party> parties;

  const _YourParties({Key key, this.parties}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 32),
      child: ListView.builder(
          itemCount: parties.length,
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final party = parties[index];
            return Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: NetworkImage(party.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text(
                                party.name,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                            RoundedButton(
                              text: 'Join',
                              width: 60,
                              color: Theme.of(context).accentColor,
                              onPressed: () {
                                print('Join pressed');
                              },
                            ),
                          ],
                        ),
                        Text(
                          party.memberCount == 2
                              ? 'me and ${party.members[1].name}'
                              : '${party.memberCount} member, ${party.onlineCount} online',
                          style: TextStyle(color: Colors.white54),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        _partyMembersAvatarList(party.members),
                        const SizedBox(
                          height: 32,
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
          }),
    );
  }

  Widget _partyMembersAvatarList(List<User> _members) {
    const _maxMemberLength = 4;
    return Row(
      children: [
        ..._members
            .sublist(0, min(_maxMemberLength, _members.length))
            .asMap()
            .entries
            .map((entry) => Transform.translate(
                  offset: Offset((entry.key * -10).toDouble(), 0),
                  child: Material(
                    elevation: _members.length - entry.key.toDouble(),
                    shape: CircleBorder(),
                    child: CircleUserAvatar(
                      imageUrl: entry.value.imageUrl,
                      size: 30,
                      isOnline: entry.value.isOnline,
                    ),
                  ),
                )),
        _members.length > _maxMemberLength
            ? Transform.translate(
                offset: Offset(_maxMemberLength * -10.toDouble(), 0),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[500],
                  radius: 30,
                  child: Text(
                    '+${_members.length - _maxMemberLength}',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            : const SizedBox.shrink()
      ],
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;

  const _SectionHeader({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 40, 20, 8),
      child: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 32.0),
      ),
    );
  }
}
