// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last, unused_local_variable, empty_constructor_bodies, unused_import
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/choose-location');
              },
              icon: Icon(Icons.edit_location),
              label: Text('Edit current location'))
        ],
      )),
    );
  }
}
