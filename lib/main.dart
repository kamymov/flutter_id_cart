// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last, unused_local_variable

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Body()));
}

class MyAbbBar extends StatelessWidget {
  const MyAbbBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Bara Members',
      style: TextStyle(fontFamily: 'Sunflower'),
    );
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String companyLevel = 'Sofware Engnieer';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: MyAbbBar(),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Kamyab1.jpg'),
                radius: 80,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey,
            ),
            Container(
              child: Text(
                'NAME',
                style: TextStyle(color: Colors.white, letterSpacing: 2),
              ),
            ),
            Container(
              child: Text(
                'Kamyab Movahhedi',
                style: TextStyle(
                    color: Colors.yellow[600],
                    fontSize: 33.0,
                    fontWeight: FontWeight.w700),
              ),
              margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'CURRENTLY COMPANY LEVEL',
                style: TextStyle(color: Colors.white, letterSpacing: 2),
              ),
            ),
            Container(
              child: Text(
                '$companyLevel',
                style: TextStyle(
                    color: Colors.yellow[600],
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700),
              ),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 3e0),
              child: Row(
                children: [
                  Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                  Container(
                    child: Text(
                      'kamyab.movahhedi@gmail.com',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  Container(
                    child: Text(
                      '09127892419',
                      style: TextStyle(
                          color: Colors.white, fontSize: 16, letterSpacing: 2),
                    ),
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (companyLevel == 'Sofware Engnieer') {
            setState(() {
              companyLevel = 'CTO';
            });
          } else {
            setState(() {
              companyLevel = 'Sofware Engnieer';
            });
          }
        },
        child: Icon(companyLevel == 'Sofware Engnieer'
            ? Icons.add
            : Icons.exposure_minus_1),
        backgroundColor: Colors.grey[800],
      ),
    );
  }
}
