import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'item_menu_bottom.dart';

class BottomMenu extends StatelessWidget {
  final bool showMenu;

  const BottomMenu({Key key, this.showMenu}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedPositioned(
      duration: Duration(milliseconds: 200),
      bottom: !showMenu ? 0 + MediaQuery.of(context).padding.bottom : 0,
      left: 0,
      right: 0,
      height: MediaQuery.of(context).size.height * 0.15,
      child: IgnorePointer(
        ignoring: showMenu,
        child: AnimatedOpacity(
          //This widget is an animated version of the Opacity widget,
          // that automatically transitions a child's opacity for a specified period,
          // whenever an opacity changes to changes.
          duration: Duration(milliseconds: 200),
          opacity: !showMenu ? 1 : 0,
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
  }
}
