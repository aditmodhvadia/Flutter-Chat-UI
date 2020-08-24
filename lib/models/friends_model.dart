import 'user_model.dart';

class FriendsModel {
  final int id;
  final User user;
  final String lastMsg;
  bool isFriend;

  FriendsModel({this.id, this.user, this.lastMsg, this.isFriend = false});
}

final me = User(
    id: 0,
    name: "Adit Modhvadia",
    desc: "Pursuing MS in Software Development from Boston University",
    post: "Student at Boston University",
    isLive: false,
    isOnline: true,
    lastLive: "5m",
    imageUrl:
        "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60");

final bruce = User(
    id: 1,
    name: "Bruce Fox",
    desc: "Pursuing MS in Software Development from Boston University",
    post: "Student at Boston University",
    isLive: true,
    isOnline: true,
    lastLive: "5m",
    imageUrl:
        "https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60");

final dustin = User(
    id: 2,
    name: "Dustin Hawkins",
    desc: "Pursuing MS in Software Development from Boston University",
    post: "Student at Boston University",
    isLive: false,
    isOnline: true,
    lastLive: "5m",
    imageUrl:
        "https://images.unsplash.com/flagged/photo-1573740144655-bbb6e88fb18a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60");

final evan = User(
    id: 1,
    name: "Evan Flores",
    desc: "Pursuing MS in Software Development from Boston University",
    post: "Student at Boston University",
    isLive: false,
    isOnline: true,
    lastLive: "5m",
    imageUrl:
        "https://images.unsplash.com/photo-1559526323-cb2f2fe2591b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60");

final bessie = User(
    id: 1,
    name: "Bessie Wilson",
    desc: "Pursuing MS in Software Development from Boston University",
    post: "Student at Boston University",
    isLive: true,
    isOnline: true,
    lastLive: "5m",
    imageUrl:
        "https://images.unsplash.com/photo-1586297135537-94bc9ba060aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60");

final rosemary = User(
    id: 1,
    name: "Rosemary Cooper",
    desc: "Pursuing MS in Software Development from Boston University",
    post: "Student at Boston University",
    isLive: false,
    isOnline: false,
    lastLive: "5m",
    imageUrl:
        "https://images.unsplash.com/photo-1509668521827-dd7d42a587e2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60");

final harold = User(
    id: 1,
    name: "Harold Alexander",
    desc: "Pursuing MS in Software Development from Boston University",
    post: "Student at Boston University",
    isLive: false,
    isOnline: false,
    lastLive: "5m",
    imageUrl:
        "https://images.unsplash.com/photo-1507499036636-f716246c2c23?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60");

final friends = [
  FriendsModel(id: bruce.id, user: bruce, lastMsg: "", isFriend: false),
  FriendsModel(
      id: dustin.id,
      user: dustin,
      lastMsg: "Long beach to Campton drive is beautiful",
      isFriend: true),
  FriendsModel(
      id: evan.id,
      user: evan,
      lastMsg: "Place welcome everyone",
      isFriend: true),
  FriendsModel(
      id: bessie.id, user: bessie, lastMsg: "Andrey bthday", isFriend: true),
  FriendsModel(id: rosemary.id, user: rosemary, lastMsg: "", isFriend: true),
  FriendsModel(
      id: harold.id, user: harold, lastMsg: "Andrey bthday", isFriend: true),
  FriendsModel(id: bruce.id, user: bruce, lastMsg: "", isFriend: false),
  FriendsModel(
      id: dustin.id,
      user: dustin,
      lastMsg: "Long beach to Campton drive is beautiful",
      isFriend: true),
  FriendsModel(
      id: evan.id,
      user: evan,
      lastMsg: "Place welcome everyone",
      isFriend: true),
  FriendsModel(
      id: bessie.id, user: bessie, lastMsg: "Andrey bthday", isFriend: true),
  FriendsModel(id: rosemary.id, user: rosemary, lastMsg: "", isFriend: true),
  FriendsModel(
      id: harold.id, user: harold, lastMsg: "Andrey bthday", isFriend: true)
];
