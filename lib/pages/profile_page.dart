import 'dart:js';

import 'package:afmf_portfolio/pages/photos/photos.dart';
import 'package:afmf_portfolio/widget/nav_button.dart';
import 'package:afmf_portfolio/widget/nav_header.dart';
import 'package:afmf_portfolio/widget/profile_info.dart';
import 'package:afmf_portfolio/widget/responsive_widget.dart';
import 'package:flutter_web/material.dart';

import 'about.dart';
import 'contact.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.greenAccent,
        ),
        drawer: ResponsiveWidget.isSmallScreen(context)
            ? Drawer(
                elevation: 15.0,
                child: Container(
                  color: Colors.greenAccent,
                  child: ListView(
                    padding: const EdgeInsets.all(20.0),
                    children: <Widget>[
                      NavButton(
                        text: "About",
                        color: Colors.red,
                        onPressed: () {
                          _navigateToAbout(context);
                        }, // goto about-page
                      ),
                      NavButton(
                        text: "Photos",
                        color: Colors.red,
                        onPressed: () {
                          _navigateToPhoto(context);
                        }, // goto photos-page
                      ),
                      NavButton(
                        text: "Contact",
                        color: Colors.red,
                        onPressed: () {
                          _navigateToContact(context);
                        }, // goto contact-page
                      )
                    ],
                  ),
                ),
              )
            : null,
        body: SingleChildScrollView(
          child: AnimatedPadding(
            duration: Duration(seconds: 2),
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
            child: ResponsiveWidget(
              largeScreen: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  NavHeader(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  ProfileInfo(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // go to contact page
  void _navigateToContact(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Contact()),
    );
  }

  // go to photo page
  void _navigateToPhoto(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Photos()),
    );
  }

  // go to photo page
  void _navigateToAbout(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => About()),
    );
  }
}
