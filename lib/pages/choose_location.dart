import 'dart:html';

import 'package:flutter/material.dart';

class chooseLocation extends StatefulWidget {
  chooseLocation({Key? key}) : super(key: key);

  @override
  _chooseLocationState createState() => _chooseLocationState();
}

class _chooseLocationState extends State<chooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Choose Location'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        elevation: 0,
      ),
    );
  }
}
