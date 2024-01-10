import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custometheam.dart';

class EventInLocation extends StatefulWidget {
  const EventInLocation({super.key});

  @override
  State<EventInLocation> createState() => _EventInLocationState();
}

class _EventInLocationState extends State<EventInLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: cardbgcolor,
        centerTitle: true,
        title: Text(
          "Event In Location",
          style: TextStyle(fontSize: 16, color: Colors.black),
          textAlign: TextAlign.center,
        ),
        elevation: 0.5,
        leading: IconButton(
          icon: Image.asset(
            "assets/images/arrow.png",
            height: 20,
            width: 20,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          /*IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
          ),*/
        ],
      ),
      body: Container(),
    );;
  }
}
