// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'navigation.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  int indexColor = 0;
  int isClicked = 0;
  List upDown = ['Верхняя неделя', 'Нижняя неделя'];
  List upDown2 = ['Ниж.', 'Верх.'];
  List days = ['11', '12', '13', '14', '15', '16'];
  List weeks = ['ПН', 'ВТ', 'СР', 'ЧТ', 'ПТ', 'СБ'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //Color.fromRGBO(244, 243, 243, 1),
      drawer: NavBar(),
      drawerEdgeDragWidth: MediaQuery.of(context).size.width,
      appBar: AppBar(
        title: Text(
          'ПИ-Б22-1-2',
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(25, 163, 192, 1),
        elevation: 0,
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...List.generate(
                          6,
                          (index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  indexColor = index;
                                });
                              },
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: indexColor == index
                                      ? Colors.grey[100]
                                      : Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(days[index]),
                                    Text(weeks[index])
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      ...List.generate(2, (index) {
                        return Visibility(
                          visible: isClicked != index,
                          child: InkWell(
                            onTap: () {
                              setState(
                                () {
                                  isClicked = index;
                                },
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(25, 163, 192, 1),
                              ),
                              alignment: Alignment.center,
                              width: 350,
                              height: 30,
                              child: Text(
                                upDown[index],
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        );
                      })
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      ...List.generate(
                        6,
                        (index) {
                          return Visibility(
                            visible: indexColor == index,
                            child: Container(
                              alignment: Alignment.center,
                              height: 500,
                              width: double.infinity,
                              color: Colors.grey[400],
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    (index + 1).toString(),
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 100),
                                  ),
                                  Text(
                                    upDown2[isClicked].toString(),
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
