// ignore_for_file: unused_import, unnecessary_this

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  late String location;
  late String time;
  late String flag;
  late String url;
  late bool isDayTime;

  WorldTime({required this.location, required this.url});

  Future<void> getData() async {
    try {
      http.Response response = await http
          .get(Uri.parse('https://worldtimeapi.org/api/timezone/${url}'));
      Map data = jsonDecode(response.body);
      convertData(data['datetime'], data['utc_offset'].substring(1, 3));
    } catch (e) {
      print('Error: $e');
      time = 'Could not get time';
    }

    // print(now);
  }

  convertData(datetime, offset) {
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    isDayTime = now.hour > 6 && now.hour < 20 ? true : false;
    time = DateFormat.jm().format(now);
  }
}
