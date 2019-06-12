import 'package:flutter_web/material.dart';

import 'profile_page.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          )),
      backgroundColor: Colors.black,
      body: Container(
        margin: const EdgeInsets.only(left: 20.0),
        child: ListView(
          children: <Widget>[
            Text(
              "Contact",
              style: TextStyle(
                color: Colors.white,
                fontSize: 50.0,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            _buildPhone(),
            SizedBox(
              height: 30.0,
            ),
            _buildEmail()
          ],
        ),
      ),
    );
  }

  Widget _buildPhone() {
    Widget phone;

    phone = Row(
      children: <Widget>[
        Text(
          "Phone : ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        Text(
          "9082118544",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
        )
      ],
    );
    return phone;
  }

  Widget _buildEmail() {
    Widget phone;

    phone = Row(
      children: <Widget>[
        Text(
          "Email : ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        Text(
          "sayam.jain180@gmail.com",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
        )
      ],
    );
    return phone;
  }
}
