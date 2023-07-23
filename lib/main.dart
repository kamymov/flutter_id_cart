// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last, unused_local_variable, empty_constructor_bodies
import 'package:flutter/material.dart';
import './Header/header.dart';
import 'Body/MainBody.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Header(),
        backgroundColor: Colors.black,
        centerTitle: false,
      ),
      body: Container(
        child: MainBody(),
      ),
    );
  }
}
