import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/refresh/models/user.dart';

/// A stateless widget that displays a user's information in a card format.
/// 
/// The `UserCard` widget takes a [User] object as a required parameter and
/// displays the user's name, age, phone number, email, and country. The card
/// includes an icon button for additional actions.
/// 
/// The widget uses a [Card] with a slight elevation and padding to present
/// the user's details in a structured layout with a [Row] and [Column].
class UserCard extends StatelessWidget {
  final User user;

  const UserCard({super.key, required this.user});

  @override
  Widget build(_) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${user.name} ${user.lastname}',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                  Text('Age: ${user.age}'),
                  Text(user.phone),
                  Text(user.email),
                  Text(
                    user.country,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
      ),
    );
  }
}
