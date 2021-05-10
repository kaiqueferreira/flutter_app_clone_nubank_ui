import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_clone_nubank_ui/pages/home/widgets/my_app_bar.dart';
import 'package:flutter_app_clone_nubank_ui/pages/home/widgets/my_dots_app.dart';
import 'package:flutter_app_clone_nubank_ui/pages/home/widgets/page_view_app.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMenu;
  int _currentIndex;

  @override
  void initState() {
    //State initial of page
    _showMenu = false;
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          MyAppBar(
              // Send var value to my_app_bar
              showMenu: _showMenu,
              onTap: () {
                setState(() {
                  _showMenu = !_showMenu;
                });
              }),
          PageViewApp(
            top: _screenHeight * 0.24,
            // Send index page changed
            onChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          Positioned(
            top: _screenHeight * 0.70,
            child: MyDotsApp(
              currentIndex: _currentIndex,
            ),
          ),
        ],
      ),
    );
  }
}
