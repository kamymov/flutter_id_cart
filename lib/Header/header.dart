// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last, unused_local_variable, empty_constructor_bodies, implementation_imports, unnecessary_import, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Text(
            'Bara invest',
            style: TextStyle(fontSize: 18.0, fontFamily: 'Sunflower'),
          )),
          Image.asset(
            'assets/baralogo.png',
            width: 60.0,
            height: 28.0,
          )
        ],
      ),
    );
  }
}
