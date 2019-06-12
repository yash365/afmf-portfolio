import 'package:flutter_web/material.dart';

import 'profile_page.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          },
        ),
      ),
      body: Center(
        child: Text(
          "About me, coming soon it's on the way",
          style: TextStyle(fontSize: 30.0, color: Colors.white),
        ),
      ),
    );
  }
}
