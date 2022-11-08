import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("All Permissions"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () async {
                  var st = await Permission.location.status;
                  if (st.isGranted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Permission is already allowed"),
                      ),
                    );
                  } else if (st.isDenied) {
                    Permission.location.request();
                  }
                },
                child: Text("Permission"),
              ),
              ElevatedButton(
                onPressed: () {
                  openAppSettings();
                },
                child: Text("Settings"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}