import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardApp extends StatelessWidget {
  final Widget child;

  const CardApp({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: child,
        // If container have a color, change color to insedi box decoration
        //color: Colors.white,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}
