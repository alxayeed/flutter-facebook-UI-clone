import 'package:facebook_clone/config/palette.dart';
import 'package:facebook_clone/screens/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

import '../../models/user_model.dart';

class Room extends StatelessWidget {
  final List<User> onlineUsers;
  const Room({Key? key, required this.onlineUsers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(
          horizontal: 4.0,
          vertical: 10.0,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + onlineUsers.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: _CreateRoomButton(),
            );
          }
          final user = onlineUsers[index - 1];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ProfileAvatar(
              imageUrl: user.imageUrl,
              isOnline: true,
            ),
          );
        },
      ),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  const _CreateRoomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        textStyle: MaterialStateProperty.all(
            const TextStyle(color: Palette.facebookBlue)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        ),
        side: MaterialStateProperty.all(
            BorderSide(width: 3.0, color: Colors.blueAccent.shade200)),
      ),
      child: Row(
        children: [
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return Palette.createRoomGradient.createShader(bounds);
            },
            child: const Icon(
              Icons.video_call,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 8.0),
          const Text(
            'Create\nRoom',
          )
        ],
      ),
    );
  }
}
