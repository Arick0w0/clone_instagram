import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String name;

  const UserPost({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //profile photo
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  //name
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              Icon(Icons.menu)
            ],
          ),
        ),
        //post
        Container(
          height: 300,
          color: Colors.grey[300],
        ),
        //below the post -> buttons and command
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.chat_bubble_outline_outlined),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark)
            ],
          ),
        ),

        // like by
        Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text('Like by '),
              Text(
                'Tina',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' and '),
              Text('other', style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
        ),

        //captions
        Padding(
          padding: EdgeInsets.only(left: 16.0, top: 8),
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                    text: name, style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        ' i turn the dirt they throwing into riches til im  😘😍'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
