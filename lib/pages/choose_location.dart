// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:learning/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London'),
    WorldTime(url: 'Europe/Berlin', location: 'Berlin'),
    WorldTime(url: 'Africa/Cario', location: 'Cario'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi'),
    WorldTime(url: 'America/Chicago', location: 'Chicago'),
    WorldTime(url: 'America/New_York', location: 'New_York'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose a location'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () async {
                  WorldTime instance = locations[index];
                  await instance.getData();
                  // Navigator.pushReplacementNamed(context, '/home', arguments: {
                  //   'location': instance.location,
                  //   'time': instance.time,
                  //   'isDayTime': instance.isDayTime
                  // });
                  Navigator.pop(context, {
                    'location': instance.location,
                    'time': instance.time,
                    'isDayTime': instance.isDayTime
                  });
                  // print(instance.time);
                },
                title: Text(
                  locations[index].location,
                  style: TextStyle(fontSize: 20.0),
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/night.png'),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
