// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last, unused_local_variable, empty_constructor_bodies, implementation_imports, unnecessary_import, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      heightFactor: 1,
      child: Container(
        width: 400,
        height: 500,
        decoration: BoxDecoration(color: Colors.black),
        child: Column(
          children: [
            Image.asset(
              'assets/sample-banner.png',
              width: 390,
            ),
            SizedBox(height: 35),
            Text(
              'به سمت بیکران و فراتر از آن',
              style: TextStyle(color: Colors.purple, fontSize: 35),
            )
          ],
        ),
      ),
    );
  }
}
