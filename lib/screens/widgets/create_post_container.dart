import 'package:flutter/material.dart';

import '../../models/user_model.dart';
import 'widgets.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;
  const CreatePostContainer({Key? key, required this.currentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      height: 100.0,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(imageUrl: currentUser.imageUrl),
              const SizedBox(width: 8.0),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: "What's on your mind?"),
                ),
              )
            ],
          ),
          const Divider(height: 10.0, thickness: 0.5),
          // Add Live, photos and videocall buttons
          SizedBox(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  label: const Text("Live"),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      elevation: 0.0),
                  icon: const Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ),
                ),
                const VerticalDivider(width: 8.0),
                ElevatedButton.icon(
                  onPressed: () {},
                  label: const Text("Photo"),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      elevation: 0.0),
                  icon: const Icon(
                    Icons.photo_library,
                    color: Colors.green,
                  ),
                ),
                const VerticalDivider(width: 8.0),
                ElevatedButton.icon(
                  onPressed: () {},
                  label: const Text("Room"),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      elevation: 0.0),
                  icon: const Icon(
                    Icons.video_call,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
