import 'package:clone_instagram_ui/util/account_tab1.dart';
import 'package:clone_instagram_ui/util/account_tab2.dart';
import 'package:clone_instagram_ui/util/account_tab3.dart';
import 'package:clone_instagram_ui/util/account_tab4.dart';
import 'package:clone_instagram_ui/util/bubble_stories.dart';
import 'package:flutter/material.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // profile picture
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey[300], shape: BoxShape.circle),
                  ),

                  // number post, follower,following

                  const Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              '209',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text('Posts'),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '109k',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text('Follower'),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '109',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text('Following'),
                          ],
                        )
                      ],
                    ),
                  ),
                  // Name and bio
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rick',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    child: Text('Mobile App'),
                  ),
                  Text(
                    'facebook/Rick Phommathep',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: GestureDetector(
                        onTap: () => print('Edit profile'),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Center(child: Text('Edit Profile')),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Center(child: Text('Ad Tools')),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Center(child: Text('Insights')),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  )
                ],
              ),
            ),

            //stories
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                children: [
                  BubbleStories(text: 'story 1'),
                  BubbleStories(text: 'story 2'),
                  BubbleStories(text: 'story 3'),
                  BubbleStories(text: 'story 4'),
                ],
              ),
            ),
            const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.grid_3x3_outlined),
                ),
                Tab(
                  icon: Icon(Icons.video_call),
                ),
                Tab(
                  icon: Icon(Icons.shop),
                ),
                Tab(
                  icon: Icon(Icons.person),
                ),
              ],
            ),

            Expanded(
                child: TabBarView(
              children: [
                AccountTab1(),
                AccountTab2(),
                AccountTab3(),
                AccountTab4(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
