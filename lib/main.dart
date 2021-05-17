import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_clone_nubank_ui/pages/home/splash/splash_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.transparent, // Like a NoItemBar
      systemNavigationBarColor: Colors.purple[800] // Like a bottom bar
      ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank Clone Ui',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        brightness: Brightness.dark,
      ),
      home: SplashPage(),
    );
  }
}
