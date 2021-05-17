import 'package:flutter/cupertino.dart';

import 'file:///E:/Users/Artur/FlutterCloneUI/flutter_app_clone_nubank_ui/lib/pages/home/widgets/cards/card_app.dart';
import 'file:///E:/Users/Artur/FlutterCloneUI/flutter_app_clone_nubank_ui/lib/pages/home/widgets/cards/first_card.dart';
import 'file:///E:/Users/Artur/FlutterCloneUI/flutter_app_clone_nubank_ui/lib/pages/home/widgets/cards/second_card.dart';
import 'file:///E:/Users/Artur/FlutterCloneUI/flutter_app_clone_nubank_ui/lib/pages/home/widgets/cards/third_card.dart';

class PageViewApp extends StatefulWidget {
  final double top;
  final ValueChanged<int> onChanged;
  final GestureDragUpdateCallback onPanUpdate;
  final bool showMenu;

  const PageViewApp(
      {Key key, this.top, this.onChanged, this.onPanUpdate, this.showMenu})
      : super(key: key);

  @override
  _PageViewAppState createState() => _PageViewAppState();
}

class _PageViewAppState extends State<PageViewApp> {
  Tween<double> _tween;

  @override
  void initState() {
    super.initState();
    _tween = Tween<double>(begin: 150.0, end: 0.0);
    //delayAnimation();
  }

  //Future<void> return nothing
  /*Future<void> delayAnimation() async {
    await Future.delayed(Duration(milliseconds: 200), () {
      setState(() {
        _tween = Tween<double>(begin: 150.0, end: 0.0);
      });
    });
  }*/

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TweenAnimationBuilder<double>(
        tween: _tween,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOutExpo, // Effect elastic
        builder: (context, value, child) {
          return AnimatedPositioned(
            duration: Duration(milliseconds: 250),
            curve: Curves.easeOut,
            top: widget.top,
            height: MediaQuery.of(context).size.height * 0.45,
            left: value,
            right: value * -1,
            //width: MediaQuery.of(context).size.width,
            child: GestureDetector(
              onPanUpdate: widget.onPanUpdate,
              child: PageView(
                //onPageChanged
                // Index of page changed
                onPageChanged: widget.onChanged,
                // PageView used by equals ScrollView contain Cards
                // physics BouncingScrollPhysics used by create effect view
                //If card stay in bottom NeverScrollableScrollPhysics dont permission scroll
                physics: widget.showMenu
                    ? NeverScrollableScrollPhysics()
                    : BouncingScrollPhysics(),
                children: [
                  CardApp(
                    child: FirstCard(),
                  ),
                  CardApp(
                    child: SecondCard(),
                  ),
                  CardApp(
                    child: ThirdCard(),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
