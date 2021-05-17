import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  // Show Menu state
  final bool showMenu;

  // Event click
  final VoidCallback onTap;

  //Create construtor class showMenu
  const MyAppBar({Key key, this.showMenu, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        SizedBox(
          //padding.top = status bar app
          height: MediaQuery.of(context).padding.top,
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            color: Colors.purple[800],
            height: MediaQuery.of(context).size.height * .20,
            //height: 120,
            child: Column(
              //MainAxisAlignment  center vertical when is element in Column
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  //MainAxisAlignment  center horizontal when is element in Row
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/nubank-logo.png",
                      height: 30,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Kaique",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Icon(!showMenu ? Icons.expand_more : Icons.expand_less),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
