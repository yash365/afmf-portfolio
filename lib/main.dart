import 'package:flutter_web/material.dart';

import 'pages/profile_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'afmfportfolio',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColorDark: Colors.black,
        fontFamily: "Oswald",     // font-family used throught the app
      ),
      home: ProfilePage(),
    );
  }
}


