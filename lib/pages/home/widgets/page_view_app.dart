import 'package:flutter/cupertino.dart';
import 'package:flutter_app_clone_nubank_ui/pages/home/widgets/card_app.dart';

class PageViewApp extends StatelessWidget {
  final double top;
  final ValueChanged<int> onChanged;

  const PageViewApp({Key key, this.top, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Positioned(
      top: top,
      height: MediaQuery.of(context).size.height * 0.45,
      left: 0,
      right: 0,
      //width: MediaQuery.of(context).size.width,
      child: PageView(
        //onPageChanged
        // Index of page changed
        onPageChanged: onChanged,
        // PageView used by equals ScrollView contain Cards
        // physics BouncingScrollPhysics used by create effect view
        physics: BouncingScrollPhysics(),
        children: [
          CardApp(),
          CardApp(),
          CardApp(),
        ],
      ),
    );
  }
}
