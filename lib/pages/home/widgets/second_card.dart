import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondCard extends StatefulWidget {
  @override
  _SecondCardState createState() => _SecondCardState();
}

//with AutomaticKeepAliveClientMixin  used for this
// save state this variables, in this case bool _showSaldo save state altered
// when scrolling card
class _SecondCardState extends State<SecondCard>
    with AutomaticKeepAliveClientMixin {
  bool _showSaldo = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Column(
        children: [
          Expanded(
              // Flex like a space column Ex: weight sum 3  weight 1
              // Flex ocupping 1/3 to space
              flex: 2,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.attach_money, color: Colors.grey),
                              SizedBox(width: 5),
                              Text(
                                "Conta",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _showSaldo = !_showSaldo;
                              });
                            },
                            child: SvgPicture.asset(
                              !_showSaldo
                                  ? 'assets/icons/eye-off-outline.svg'
                                  : 'assets/icons/eye-outline.svg',
                              color: Colors.grey,
                              semanticsLabel: 'eye',
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                      child: SizedBox(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Saldo disponível",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            _showSaldo
                                ? Text.rich(
                                    TextSpan(
                                      text: 'R\$ 2.880.00',
                                    ),
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 28),
                                  )
                                : Container(
                                    height: 32,
                                    width: 160,
                                    color: Colors.grey[300]),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  ],
                ),
              )),
          Expanded(
              // Flex like a space column Ex: weight sum 3  weight 1
              // Flex ocupping 1/3 to space
              flex: 1,
              child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.credit_card, color: Colors.grey),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: Text(
                            'Compra mais recente em Posto de Combustível no valor de R\$ 188,80 sexta',
                            style: TextStyle(color: Colors.black, fontSize: 13),
                          ),
                        ),
                        Icon(Icons.chevron_right,
                            color: Colors.grey[400], size: 18)
                      ],
                    ),
                  ),
                  color: Colors.grey[200])),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
