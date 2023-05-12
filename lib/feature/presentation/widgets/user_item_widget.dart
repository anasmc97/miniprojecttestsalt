import 'package:flutter/material.dart';
import 'package:miniprojectsalt/feature/domain/entities/user_entity.dart';

class UserItemWidget extends StatelessWidget {
  final User user;

  UserItemWidget({required this.user});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        backgroundImage: NetworkImage(user.avatar),
      ),
      title: Text('${user.firstName} ${user.lastName}'),
      subtitle: Text(user.email),
    );
  }
}
