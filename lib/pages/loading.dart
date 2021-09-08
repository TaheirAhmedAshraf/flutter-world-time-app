import 'package:flutter/material.dart';
import 'package:world_time_app/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class loading extends StatefulWidget {
  loading({Key? key}) : super(key: key);

  @override
  _loadingState createState() => _loadingState();
}

class _loadingState extends State<loading> {
  void setupWorldTime() async {
    WorldTime intance =
        WorldTime(location: 'Dhaka', flag: 'bangladesh.png', url: 'Asia/Dhaka');
    await intance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': intance.location,
      'flag': intance.flag,
      'time': intance.time,
      "isDayTime": intance.isDayTime
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Padding(
        padding: EdgeInsets.all(50),
        child: SpinKitRotatingCircle(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
