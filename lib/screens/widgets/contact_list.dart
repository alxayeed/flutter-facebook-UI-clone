import 'package:facebook_clone/screens/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../../models/models.dart';

class ContactList extends StatelessWidget {
  final List<User> users;
  const ContactList({
    Key? key,
    required this.users,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 280.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Contacts',
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0),
                ),
              ),
              Icon(
                Icons.search,
                color: Colors.grey[600],
              ),
              const SizedBox(width: 8.0),
              Icon(
                Icons.more_horiz,
                color: Colors.grey[600],
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              itemCount: users.length,
              itemBuilder: (context, index) {
                final User user = users[index];
                return UserCard(user: user);
              },
            ),
          )
        ],
      ),
    );
  }
}
