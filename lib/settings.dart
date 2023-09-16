// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'navigation.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      drawerEdgeDragWidth: MediaQuery.of(context).size.width,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(25, 163, 192, 1),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(25, 163, 192, 1),
            ),
            height: 225,
            alignment: Alignment.center,
            child: Container(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assets/images/avatar.png'),
                  ),
                  Text(
                    'Alesha Popovich',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '@login',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(),
            ),
          ),
        ],
      ),
    );
  }
}
