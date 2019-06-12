import 'package:afmf_portfolio/pages/about.dart';
import 'package:afmf_portfolio/pages/contact.dart';
import 'package:afmf_portfolio/pages/photos/photos.dart';
import 'package:afmf_portfolio/widget/responsive_widget.dart';
import 'package:flutter_web/material.dart';

import 'nav_button.dart';
import 'profile_name.dart';

class NavHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ProfileName(),
          if (!ResponsiveWidget.isSmallScreen(context))
            Row(
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
            )
        ],
      ),
    );
  }

  void _navigateToContact(BuildContext context) {
    Navigator.pushReplacement(
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
