import 'package:flutter/material.dart';
import 'package:skishoapp/Components/AppBarComponent.dart';
import 'package:skishoapp/Pages/Page1.dart';
import 'package:skishoapp/Pages/Page2.dart';
import 'package:skishoapp/Pages/Page3.dart';
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
    {'title': 'Profile Search', 'icon': 'icon1' , 'route' : page3()},
    {'title': 'My Likes & My Views', 'icon': 'icon2'},
    {'title': 'App Settings', 'icon': 'icon2'},
    {'title': 'My Activity', 'icon': 'icon2'},
    {'title': 'Saved', 'icon': 'icon2'},
    {'title': 'Subscriptions', 'icon': 'icon2'},
    {'title': 'My Account', 'icon': 'icon2'},
    {'title': 'Secret Vault', 'icon': 'icon2'},
    {'title': 'Secret Security', 'icon': 'icon2'},
    {'title': 'Categories', 'icon': 'icon2'},
    {'title': 'Achivements', 'icon': 'icon2'},
    {'title': 'Account Management', 'icon': 'icon2'},
    {'title': 'Zone Winners', 'icon': 'icon2'},
    {'title': 'Star of Skisho', 'icon': 'icon2'},
    {'title': 'Languages', 'icon': 'icon2'},
    {'title': 'My Bills & Transactions', 'icon': 'icon2'},
    {'title': 'Skisho Verification', 'icon': 'icon2'},
    {'title': 'App Updates', 'icon': 'icon2'},
    {'title': 'Version', 'icon': 'icon2'},
    {'title': 'Founder & CEO', 'icon': 'icon2'},
    {'title': 'Help & Support', 'icon': 'icon2'},
    {'title': 'Log Out', 'icon': 'icon2'},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0x00000000),
          title: Text("Settings"),
          leading: SafeArea(
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: const Icon(
                    Icons.person_pin,
                    size: 24.0,
                  ),
                  color: AppColors.primaryColor,
                  onPressed: () {
                    print('Navigate page');
                  },
                ),
              ],
            ),
          ),
          actions: <Widget>[
            Text('Skisho'),
          ],
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
