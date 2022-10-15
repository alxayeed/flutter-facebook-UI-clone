import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone/screens/widgets/profile_avatar.dart';
import 'package:facebook_clone/screens/widgets/responsive.dart';
import 'package:flutter/material.dart';

import '../../config/palette.dart';
import '../../models/story_model.dart';
import '../../models/user_model.dart';

class Stories extends StatelessWidget {
  final User currentUser;
  final List<Story> stories;
  const Stories({
    Key? key,
    required this.currentUser,
    required this.stories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: Responsive.isDesktop(context) ? Colors.transparent : Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 1 + stories.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Responsive.isDesktop(context) ? 0.0 : 8.0,
                  vertical: 4.0),
              child: _StoryCard(
                isAddStory: true,
                currentUser: currentUser,
              ),
            );
          }
          final story = stories[index - 1];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
            child: _StoryCard(
              story: story,
            ),
          );
        },
      ),
    );
  }
}

class _StoryCard extends StatelessWidget {
  final User? currentUser;
  final Story? story;
  final bool isAddStory;
  const _StoryCard({
    Key? key,
    this.currentUser,
    this.story,
    this.isAddStory = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: CachedNetworkImage(
            imageUrl: isAddStory ? currentUser!.imageUrl : story!.imageUrl,
            height: double.infinity,
            width: 110.0,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: double.infinity,
          width: 110.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              gradient: Palette.storyGradient,
              boxShadow: Responsive.isDesktop(context)
                  ? const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4.0,
                        offset: Offset(0, 2),
                      )
                    ]
                  : null),
        ),
        Positioned(
          top: 6.0,
          left: 6.0,
          child: isAddStory
              ? CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: Palette.facebookBlue,
                    ),
                  ),
                )
              : ProfileAvatar(
                  imageUrl: story!.user.imageUrl,
                  hasBorder: !story!.isViewed,
                ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          right: 8.0,
          child: Text(
            isAddStory ? "Add to story" : story!.user.name,
            style: const TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
