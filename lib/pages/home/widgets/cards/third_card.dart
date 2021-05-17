import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ThirdCard extends StatefulWidget {
  @override
  _ThirdCardState createState() => _ThirdCardState();
}

class _ThirdCardState extends State<ThirdCard> {
  bool _buttomPressed = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/icons/gift-outline.svg',
            color: Colors.grey,
            semanticsLabel: 'eye',
          ),
          Column(
            children: [
              Text(
                'Nubank Rewards',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 26),
              ),
              SizedBox(height: 15),
              Text(
                'Acumule pontos que nunca expiram e troque por passagens aéreas e serviços que voce realmente usa.',
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Container(
            height: 50,
            width: double.infinity, // Extend to all space
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              border: Border.all(width: 0.7, color: Colors.purple[800]),
            ),
            child: RaisedButton(
              // Change color when pressed, need setState and class StateFullWidget
              onHighlightChanged: (pressed) {
                setState(() {
                  _buttomPressed = pressed;
                });
              },
              child: Text(
                'ATIVE SEU REWARDS',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              // change text color
              highlightColor: Colors.purple[800],
              disabledTextColor: Colors.purple[800],
              //Change text color when pressed
              textColor: _buttomPressed ? Colors.white : Colors.purple[800],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3)),
              color: Colors.transparent,
              elevation: 0,
              disabledElevation: 0,
              focusElevation: 0,
              highlightElevation: 0,
              hoverElevation: 0,
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
