import 'package:flutter/material.dart';
import 'package:location/screen/homepage.dart';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>Home_Page(),
      },
    ),
  );
}