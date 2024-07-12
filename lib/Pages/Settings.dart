import 'package:flutter/material.dart';
import 'package:skishoapp/Components/AppBarComponent.dart';
import 'package:skishoapp/Pages/Page1.dart';
import 'package:skishoapp/Pages/Page2.dart';
import 'package:skishoapp/Pages/Page3.dart';
import 'package:skishoapp/Pages/ProfileSearch.dart';
import 'package:skishoapp/asset/style.dart';
import 'package:skishoapp/main.dart';
// import 'package:skishoapp/asset/style.dart';

void Settings() {
  runApp(const SettingsPage());
}

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _SettingsPageState extends State<SettingsPage> {
  final List<Map<String, dynamic>> options = [
    {'title': 'Profile Search', 'icon': 'icon1' , 'route' : ProfileSearchClass()},
    {'title': 'My Likes & My Views', 'icon': 'icon2', 'route' : ProfileSearchClass()},
    {'title': 'App Settings', 'icon': 'icon2', 'route' : ProfileSearchClass()},
    {'title': 'My Activity', 'icon': 'icon2', 'route' : ProfileSearchClass()},
    {'title': 'Saved', 'icon': 'icon2', 'route' : ProfileSearchClass()},
    {'title': 'Subscriptions', 'icon': 'icon2', 'route' : ProfileSearchClass()},
    {'title': 'My Account', 'icon': 'icon2', 'route' : ProfileSearchClass()},
    {'title': 'Secret Vault', 'icon': 'icon2', 'route' : ProfileSearchClass()},
    {'title': 'Secret Security', 'icon': 'icon2', 'route' : ProfileSearchClass()},
    {'title': 'Categories', 'icon': 'icon2', 'route' : ProfileSearchClass()},
    {'title': 'Achivements', 'icon': 'icon2', 'route' : ProfileSearchClass()},
    {'title': 'Account Management', 'icon': 'icon2', 'route' : ProfileSearchClass()},
    {'title': 'Zone Winners', 'icon': 'icon2', 'route' : ProfileSearchClass()},
    {'title': 'Star of Skisho', 'icon': 'icon2', 'route' : ProfileSearchClass()},
    {'title': 'Languages', 'icon': 'icon2', 'route' : ProfileSearchClass()},
    {'title': 'My Bills & Transactions', 'icon': 'icon2', 'route' : ProfileSearchClass()},
    {'title': 'Skisho Verification', 'icon': 'icon2', 'route' : ProfileSearchClass()},
    {'title': 'App Updates', 'icon': 'icon2', 'route' : ProfileSearchClass()},
    {'title': 'Version', 'icon': 'icon2', 'route' : ProfileSearchClass()},
    {'title': 'Founder & CEO', 'icon': 'icon2', 'route' : ProfileSearchClass()},
    {'title': 'Help & Support', 'icon': 'icon2', 'route' : ProfileSearchClass()},
    {'title': 'Log Out', 'icon': 'icon2', 'route' : ProfileSearchClass()},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0x00000000),
          // title: Text("Settings"),
          leading: SafeArea(
            child: Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(7)),
                CircleAvatar(
                  backgroundColor: AppColors.primaryColor,
                  backgroundImage: AssetImage('lib/asset/Images/person.png'),
                )
              ],
            ),
          ),
        ),
        body: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              final option = options[index];
              return ListTile(
                title: Text(option['title']),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => option['route']),
                  );
                },
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 0.0,
              );
              // return Divider(
              //   color: Colors.grey,
              //   thickness: 1.0,
              //   height: 10.0,
              // );
            },
            itemCount: options.length),
      ),
    );
  }
}
