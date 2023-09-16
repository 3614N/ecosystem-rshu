// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
//import 'package:rshu/functions.dart';

Widget Menu(BuildContext context, avatar, name, window) {
  return InkWell(
    child: Container(
      margin: EdgeInsets.only(top: 1),
      color: Colors.white,
      height: 55,
      child: Row(
        children: [
          SizedBox(
            width: 15,
          ),
          Icon(
            avatar,
            size: 28,
            color: Color.fromRGBO(75, 75, 75, 1),
          ),
          SizedBox(
            width: 25,
          ),
          Text(
            name,
            style:
                TextStyle(fontSize: 16, color: Color.fromRGBO(54, 68, 76, 1)),
          )
        ],
      ),
    ),
    onTap: () {
      Navigator.pop(context);
      Navigator.pop(context);

      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context) {
            return window;
          },
        ),
      );
    },
  );
}
