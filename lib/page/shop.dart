import 'package:clone_instagram_ui/util/shop_grid.dart';
import 'package:flutter/material.dart';

class UserShop extends StatelessWidget {
  const UserShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shop'),
            Row(
              children: [
                Icon(Icons.calendar_month),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.menu),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                padding: EdgeInsets.all(8),
                color: Colors.grey[300],
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey[500],
                    ),
                    Container(
                      child: Text(
                        'Search',
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ShopGrid(),
          ),
        ],
      ),
    );
  }
}
