import 'package:afmf_portfolio/pages/photos/tabs/indoor.dart';
import 'package:afmf_portfolio/pages/photos/tabs/landscape.dart';
import 'package:afmf_portfolio/pages/photos/tabs/nature.dart';
import 'package:afmf_portfolio/pages/photos/tabs/portrait.dart';
import 'package:afmf_portfolio/pages/photos/tabs/street.dart';
import 'package:afmf_portfolio/widget/nav_button.dart';
import 'package:afmf_portfolio/widget/responsive_widget.dart';
import 'package:flutter_web/material.dart';

import '../profile_page.dart';

class Photos extends StatefulWidget {
  @override
  _PhotosState createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // number of tabs needed
      child: Scaffold(
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
          bottom: TabBar(
            tabs: <Widget>[
              // street tab1
              _buildTabBarText("Street"),
              //  portrait tab2
              _buildTabBarText("Portrait"),
              // indoor tab3
              _buildTabBarText("Indoor"),
              // landscape tab4
              _buildTabBarText("Landscape"),
              // nature tab5
              _buildTabBarText("Nature")
            ],
          ),
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
                        text: "Street",
                        color: Colors.red,
                        onPressed: () {
                          _navigateToTabs(Street());
                        },
                      ),
                      NavButton(
                        text: "Portrait",
                        color: Colors.red,
                        onPressed: () {
                          _navigateToTabs(Portrait());
                        },
                      ),
                      NavButton(
                        text: "Indoor",
                        color: Colors.red,
                        onPressed: () {
                          _navigateToTabs(Indoor());
                        },
                      ),
                      NavButton(
                        text: "Landscape",
                        color: Colors.red,
                        onPressed: () {
                          _navigateToTabs(Landscape());
                        },
                      ),
                      NavButton(
                        text: "Nature",
                        color: Colors.red,
                        onPressed: () {
                          _navigateToTabs(Nature());
                        },
                      ),
                    ],
                  ),
                ),
              )
            : null,
        body: ResponsiveWidget(
          largeScreen: TabBarView(
            children: <Widget>[
              // street tab1
              Street(),
              //  portrait tab2
              Portrait(),
              // indoor tab3
              Indoor(),
              // landscape tab4
              Landscape(),
              // nature tab5
              Nature()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabBarText(String text) {
    Widget tabBar;

    tabBar = Padding(
      padding: const EdgeInsets.all(7.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 20.0, color: Colors.white),
      ),
    );

    return tabBar;
  }

  void _navigateToTabs(Widget navigate) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => navigate),
    );
  }
}
