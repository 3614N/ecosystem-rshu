// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'navigation.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Sans'),
      home: News(),
    ));

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      drawer: NavBar(),
      drawerEdgeDragWidth: MediaQuery.of(context).size.width,
      appBar: AppBar(
        title: Text(
          'Новости РГГМУ',
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(25, 163, 192, 1),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 25,
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...List.generate(
                10,
                (index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        SizedBox(width: 15),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[50],
                            //borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          width: double.infinity,
                          height: 250,
                          margin: EdgeInsets.only(top: index == 0 ? 2 : 4),
                          alignment: Alignment.center,
                          child: Text(
                            '$index',
                            style: TextStyle(
                              fontSize: 100,
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          width: double.infinity,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Новость $index',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    'Описание $index',
                                    style: TextStyle(color: Colors.grey[700]),
                                  ),
                                  SizedBox(height: 10)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
