// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last, unused_local_variable, empty_constructor_bodies
import 'package:flutter/material.dart';
import 'package:learning/pages/choose_location.dart';
import 'package:learning/pages/home.dart';
import 'package:learning/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/choose-location': (context) => ChooseLocation()
    },
    initialRoute: '/',
  ));
}
