import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:skishoapp/asset/style.dart';

Page1() {
  runApp(page1());
}

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  final List<Map<String, dynamic>> stories = [
    {'loc': 'lib/asset/Images/person.png', 'label': 'Home'},
    {'loc': 'lib/asset/Images/profile1.jpeg', 'label': 'Chat'},
    {'loc': 'lib/asset/Images/profile3.jpg', 'label': 'Chat'},
    {'loc': 'lib/asset/Images/profile8.jpg', 'label': 'Settings'},
    {'loc': 'lib/asset/Images/profile5.jpg', 'label': 'Settings'},
    {'loc': 'lib/asset/Images/profile6.jpg', 'label': 'Chat'},
    {'loc': 'lib/asset/Images/profile7.jpg', 'label': 'Settings'},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      height: 70.0,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          // Ensure index is within bounds of stories list
          if (index < stories.length) {
            // Access the image location and label from stories
            String imageLoc = stories[index]['loc'];
            String label = stories[index]['label'];
            return Container(
              child: CircleAvatar(
                radius: 40.0,
                backgroundImage: AssetImage(imageLoc),
                backgroundColor: Color.fromARGB(0, 0, 0, 0),
                foregroundColor: Colors.amber,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.primaryColor,
                      width: 2.0, // Adjust the width of the stroke
                    ),
                  ),
                ),
              ),
            );
          } else {
            return SizedBox(); // Return an empty SizedBox if index is out of bounds
          }
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: Colors.grey,
            thickness: 1.0,
            height: 10.0,
          );
        },
        itemCount:
            stories.length, // Use the length of the stories list as itemCount
      ),

      // child: ListView(
      //   scrollDirection: Axis.horizontal,
      //   children: <Widget>[
      //     stories.map(
      //       (item) {
      //         return Text(item.label)
      //       },
      //     ),
      // CircleAvatar(
      //   radius: 40.0,
      //   backgroundImage: const AssetImage(
      //     'lib/asset/Images/person.png',
      //   ),
      //   backgroundColor: Color.fromARGB(0, 0, 0, 0),
      //   foregroundColor: Colors.amber,
      //   child: Container(
      //     decoration: BoxDecoration(
      //       shape: BoxShape.circle,
      //       border: Border.all(
      //         color: AppColors.primaryColor,
      //         width: 2.0, // Adjust the width of the stroke
      //       ),
      //     ),
      //   ),
      // ),
      //   ],
      // ),
    );
  }
}
