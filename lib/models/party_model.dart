import 'package:flutterchatui/models/models.dart';
import 'package:flutterchatui/models/user_model.dart';

class Party {
  final int id;
  final String name;
  final int memberCount;
  final int onlineCount;
  final String imageUrl;
  final List<User> members;

  Party(
      {this.id,
      this.name,
      this.memberCount,
      this.onlineCount,
      this.imageUrl,
      this.members});
}

final parties = [
  Party(
      id: 1,
      name: 'Andrey bthday',
      memberCount: 45,
      onlineCount: 4,
      imageUrl:
          "https://images.unsplash.com/photo-1528495612343-9ca9f4a4de28?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      members: [
        me,
        bruce,
        dustin,
        evan,
        bessie,
        me,
        bruce,
        dustin,
        evan,
        bessie,
        me,
        bruce,
        dustin,
        evan,
        bessie,
        me,
        bruce,
        dustin,
        evan,
        bessie,
        me,
        bruce,
        dustin,
        evan,
        bessie,
        me,
        bruce,
        dustin,
        evan,
        bessie,
        me,
        bruce,
        dustin,
        evan,
        bessie,
        me,
        bruce,
        dustin,
        evan,
        bessie,
        me,
        bruce,
        dustin,
        evan,
        bessie,
      ]),
  Party(
      id: 2,
      name: 'Long Beach to Campton',
      memberCount: 2,
      onlineCount: 1,
      imageUrl:
          "https://images.unsplash.com/photo-1517965623714-cbaadea459b4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      members: [me, bruce]),
  Party(
      id: 3,
      name: 'Rap Caviar',
      memberCount: 45,
      onlineCount: 4,
      imageUrl:
          "https://images.unsplash.com/photo-1533174072545-7a4b6ad7a6c3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      members: [me, bruce, dustin, evan, bessie])
];
