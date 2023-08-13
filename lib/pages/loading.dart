// ignore_for_file: prefer_const_constructors, unnecessary_this, await_only_futures, non_constant_identifier_names, unused_import, unused_local_variable, unused_label, use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:http/http.dart' as http;
import 'package:learning/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  late String time = 'Loading...';

  void getTime() async {
    WorldTime instence = WorldTime(location: 'London', url: 'Europe/London');
    await instence.getData();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instence.location,
      'time': instence.time,
      'isDayTime': instence.isDayTime
    });
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
          child: SpinKitRotatingCircle(
        color: Colors.black,
        size: 80.0,
      )),
    );
  }
}
