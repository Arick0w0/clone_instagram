import 'package:clone_instagram_ui/util/bubble_stories.dart';
import 'package:clone_instagram_ui/util/user_post.dart';
import 'package:flutter/material.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'Rick',
    'Kook',
    'Tina',
    'John',
    'Kiwi',
    'Jo star',
    'Nick',
  ];

  UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
            ),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 103,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return BubbleStories(text: people[index]);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPost(
                    name: people[index],
                  );
                }),
          )
        ],
      ),
    );
  }
}
