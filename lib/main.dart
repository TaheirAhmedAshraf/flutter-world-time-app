import 'dart:js';

import 'package:flutter/material.dart';
import 'package:world_time_app/pages/choose_location.dart';
import 'package:world_time_app/pages/loading.dart';
import 'pages/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => loading(),
      '/home': (context) => home(),
      '/location': (context) => chooseLocation()
    },
  ));
}
