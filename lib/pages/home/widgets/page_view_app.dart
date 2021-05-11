import 'package:flutter/cupertino.dart';
import 'package:flutter_app_clone_nubank_ui/pages/home/widgets/card_app.dart';

class PageViewApp extends StatelessWidget {
  final double top;
  final ValueChanged<int> onChanged;
  final GestureDragUpdateCallback onPanUpdate;
  final bool showMenu;

  const PageViewApp(
      {Key key, this.top, this.onChanged, this.onPanUpdate, this.showMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedPositioned(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOut,
      top: top,
      height: MediaQuery.of(context).size.height * 0.45,
      left: 0,
      right: 0,
      //width: MediaQuery.of(context).size.width,
      child: GestureDetector(
        onPanUpdate: onPanUpdate,
        child: PageView(
          //onPageChanged
          // Index of page changed
          onPageChanged: onChanged,
          // PageView used by equals ScrollView contain Cards
          // physics BouncingScrollPhysics used by create effect view
          //If card stay in bottom NeverScrollableScrollPhysics dont permission scroll
          physics: showMenu
              ? NeverScrollableScrollPhysics()
              : BouncingScrollPhysics(),
          children: [
            CardApp(),
            CardApp(),
            CardApp(),
          ],
        ),
      ),
    );
  }
}
