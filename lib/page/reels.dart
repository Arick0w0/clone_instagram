import 'package:flutter/material.dart';

class UserReels extends StatelessWidget {
  const UserReels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            ),
          ],
        ),
        Column(
          children: [Text('data')],
        )
      ],
    ));
  }
}
