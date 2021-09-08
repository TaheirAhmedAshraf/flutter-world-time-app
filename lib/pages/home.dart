import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  Map? data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map?;

    String bgImage = data!['isDayTime'] ? 'day.png' : 'night.png';
    String bgColor = data!['isDayTime'] ? Colors.blue : Colors.indigo[700];

    return Scaffold(
      body: SafeArea(
        child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(bgImage), fit: BoxFit.cover)),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 120, 0, 0),
              child: Column(
                children: [
                  FlatButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/location');
                    },
                    icon: Icon(Icons.edit_location),
                    label: Text('Edit Location'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        data!['location'],
                        style: TextStyle(fontSize: 28, letterSpacing: 2),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    data!['time'],
                    style: TextStyle(fontSize: 66),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
