import 'package:flutter/material.dart';
import 'package:skishoapp/asset/style.dart';

class AppBarComponent extends StatefulWidget {
  final Key? key;
  AppBarComponent({this.key}) : super(key: key);
  @override
  State<AppBarComponent> createState() => _AppBarComponentState();
}

class _AppBarComponentState extends State<AppBarComponent> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0x00000000),
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
    );
  }
}
