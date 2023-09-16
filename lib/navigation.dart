// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:rshu/settings.dart';
import 'package:rshu/main.dart';
import 'package:rshu/schedule.dart';
import 'widgets.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 320,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(25, 163, 192, 1),
              ),
              height: 200,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/avatar.png'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Alesha Popovich',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    '@login',
                    style: TextStyle(
                        color: Color.fromRGBO(244, 243, 243, 1), fontSize: 15),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.grey[200],
              child: Column(
                children: [
                  Menu(context, Icons.newspaper_outlined, 'Новости', News()),
                  Menu(context, Icons.calendar_month_outlined, 'Расписание',
                      Schedule()),
                  Menu(
                      context, Icons.settings_outlined, 'Настройки', Account()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
