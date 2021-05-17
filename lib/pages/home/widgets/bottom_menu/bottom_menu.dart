import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'item_menu_bottom.dart';

class BottomMenu extends StatefulWidget {
  final bool showMenu;

  const BottomMenu({Key key, this.showMenu}) : super(key: key);

  @override
  _BottomMenuState createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  Tween<double> _tween;

  @override
  void initState() {
    super.initState();
    _tween = Tween<double>(begin: 150.0, end: 0.0);
    //delayAnimation();
  }

  //Future<void> return nothing
  /*Future<void> delayAnimation() async {
    await Future.delayed(Duration(milliseconds: 0), () {
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
            duration: Duration(milliseconds: 200),
            bottom: !widget.showMenu
                ? 0 + MediaQuery.of(context).padding.bottom
                : 0,
            left: value,
            right: value * -1,
            height: MediaQuery.of(context).size.height * 0.15,
            child: IgnorePointer(
              ignoring: widget.showMenu,
              child: AnimatedOpacity(
                //This widget is an animated version of the Opacity widget,
                // that automatically transitions a child's opacity for a specified period,
                // whenever an opacity changes to changes.
                duration: Duration(milliseconds: 200),
                opacity: !widget.showMenu ? 1 : 0,
                child: Container(
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    //Direction off ListView scrollDirection: Axis.horizontal
                    scrollDirection: Axis.horizontal,
                    children: [
                      ItemMenuBottom(
                        icon: Icons.person_add,
                        text: 'Indicar amigos',
                      ),
                      ItemMenuBottom(
                        icon: Icons.phone_android,
                        text: 'Recarga de celular',
                      ),
                      ItemMenuBottom(
                        icon: Icons.chat,
                        text: 'Cobrar',
                      ),
                      ItemMenuBottom(
                        icon: Icons.monetization_on,
                        text: 'Empréstimos',
                      ),
                      ItemMenuBottom(
                        icon: Icons.move_to_inbox,
                        text: 'Depositar',
                      ),
                      ItemMenuBottom(
                        icon: Icons.mobile_screen_share,
                        text: 'Transferir',
                      ),
                      ItemMenuBottom(
                        icon: Icons.format_align_center,
                        text: 'Ajustar limite',
                      ),
                      ItemMenuBottom(
                        icon: Icons.chrome_reader_mode,
                        text: 'Pagar',
                      ),
                      ItemMenuBottom(
                        icon: Icons.lock_open,
                        text: 'Bloquear cartão',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
