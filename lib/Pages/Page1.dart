import 'dart:ui';

import 'package:flutter/cupertino.dart';
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
  final List<Map<String, String>> feedItems = [
    {
      'username': 'user1',
      'profileImage': 'assets/profile1.png',
      'postImage': 'assets/post1.png',
      'caption': 'This is a caption for post 1',
    },
    {
      'username': 'user2',
      'profileImage': 'assets/profile2.png',
      'postImage': 'assets/post2.png',
      'caption': 'This is a caption for post 2',
    },
    // Add more items here
  ];
  final img = 'lib/asset/Images/profile3.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            Padding(padding: EdgeInsets.all(3)),
            Icon(Icons.person_pin, color: AppColors.primaryColor),
            Icon(
              Icons.notifications,
              color: AppColors.primaryColor,
            )
          ],
        ),
        actions: [
          Padding(padding: EdgeInsets.all(1)),
          Image.asset('lib/asset/Images/skisho.png'),
        ],
      ),
      body: Column(
        children: [
          Column(
            children: [
              Padding(padding: EdgeInsets.all(10)),
              Container(
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
                  itemCount: stories
                      .length, // Use the length of the stories list as itemCount
                ),
              ),
              Container(
                height: 500, // Specify the height for the ListView
                child: ListView(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(img),
                      ),
                      title: Text("Name"),
                      trailing: ElevatedButton(
                        onPressed: () {
                          // Implement follow functionality here
                        },
                        child: Text('Follow'),
                      ),
                    ),
                    Image.asset(img),
                    const Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("caption"),
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.favorite_border),
                          onPressed: () {
                            // Implement like functionality here
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.comment),
                          onPressed: () {
                            // Implement comment functionality here
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.send),
                          onPressed: () {
                            // Implement share functionality here
                          },
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.bookmark_border),
                          onPressed: () {
                            // Implement save functionality here
                          },
                        ),
                      ],
                    ),
                    Divider(),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(img),
                      ),
                      title: Text("Name"),
                    ),
                    Image.asset(img),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("caption"),
                    ),
                    Divider(),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(img),
                      ),
                      title: Text("Name"),
                    ),
                    Image.asset(img),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("caption"),
                    ),
                    Divider(),
                    ListTile(title: Text('List 2 - Item 2')),
                    ListTile(title: Text('List 2 - Item 3')),
                  ],
                ),
              ),
              // Expanded(child: ListView(children: [ListTile(title: Text("data"),)],),)
            ],
          ),
          // Expanded(
          //   child: ListView(
          //     children: [
          //       ListTile(
          //         leading: CircleAvatar(
          //           backgroundImage: AssetImage(img),
          //         ),
          //         title: Text("Name"),
          //       ),
          //       Image.asset(img),
          //       Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Text("caption"),
          //       ),
          //       Divider(),
          //       ListTile(title: Text('List 2 - Item 2')),
          //       ListTile(title: Text('List 2 - Item 3')),
          //     ],
          //   ),
          // ),
          // Text("datan - 1"),
          // ListView(
          //   children: [
          //     ListTile(
          //       title: Text("Profile 1"),
          //     ),
          //     Divider(color: Colors.amber),
          //   ],
          // )

          // Card(
          //   margin: EdgeInsets.all(10.0),
          //   elevation: 10.0,
          //   child: Container(
          //     height: 300.0,
          //   ),
          // ),
        ],
      ),
    );
  }
}
