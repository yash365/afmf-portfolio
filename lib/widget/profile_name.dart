import 'package:flutter_web/material.dart';

class ProfileName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          "SAYYAM JAIN (sam)",
          textScaleFactor: 3,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 15.0,
        ),
        AnimatedContainer(
          duration: Duration(seconds: 3),
          height: 10.0,
          width: 10.0,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.orange,
          ),
        ),
      ],
    );
  }
}
