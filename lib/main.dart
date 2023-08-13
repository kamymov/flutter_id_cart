// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:learning/pages/choose_location.dart';
import 'package:learning/pages/home.dart';
import 'package:learning/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/location': (context) => ChooseLocation(),
      '/home': (context) => Home(),
    },
  ));
}
