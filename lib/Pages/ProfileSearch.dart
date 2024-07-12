import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void ProfileSearch() {
  runApp(ProfileSearchClass());
}

class ProfileSearchClass extends StatefulWidget {
  const ProfileSearchClass({super.key});

  @override
  State<ProfileSearchClass> createState() => _ProfileSearchClassState();
}

class _ProfileSearchClassState extends State<ProfileSearchClass> {
  List<Map<String, dynamic>> filtersData = [
    {"tittle": 'Tags', "Men": 2, "Women": 3},
    {"tittle": 'Accounts', "Men": 2, "Women": 3},
    {"tittle": 'Audio', "Men": 2, "Women": 3},
    {"tittle": 'Reels', "Men": 2, "Women": 3},
    {"tittle": 'Places', "Men": 2, "Women": 3},
  ];

  @override
  void initState() {
    super.initState();
    // fetchData();
  }

  Future<void> fetchData() async {
    final response = await http
        .get(Uri.parse('https://dummy.restapiexample.com/api/v1/employees'));
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      List<dynamic> data = jsonResponse['data'];
      setState(() {
        final filtersData1 = data.map((item) => item as Map<String, dynamic>).toList();
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('lib/asset/Images/profile1.jpeg'),
          ),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  hintText: 'Search .. ',
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: filtersData.length,
                itemBuilder: (BuildContext context, int index) {
                  if (index < filtersData.length) {
                    return Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(filtersData[index]['tittle']),
                        ),
                        const SizedBox(
                          width: 12,
                        )
                      ],
                    );
                  }
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 12,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  ProfileSearch();
}
