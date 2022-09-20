import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nubank_clone/utils/colors.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _boxes(),
          _ensuranse(),
          _invite(),
        ],
      ),
    );
  }

  _boxes(){

    return Container(
      margin: const EdgeInsets.only(left: 20, top: 10, right: 5, bottom: 15),
      padding: const EdgeInsets.all(24),

      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16)

      ),
      child: RichText(
        text: TextSpan(
            children: [
              TextSpan(text: 'Você pediu e elas chegaram:\n ' , style: TextStyle(color: backgroundColor, fontWeight: FontWeight.w400)),
              TextSpan(text: 'conheça as Caixinhas!', style: TextStyle(color: Colors.black))
            ]
        ),
      ),
    );
  }
  _ensuranse(){

    return Container(
      margin: const EdgeInsets.only(left: 20, top: 10, right: 5, bottom: 15),
      padding: const EdgeInsets.all(24),

      decoration: BoxDecoration(
          color: greyColor,
          borderRadius: BorderRadius.circular(16)

      ),
      child: RichText(
        text: TextSpan(
            children: [
              TextSpan(text: 'Seguro de Vida a partir de R\$4/\nmês? ', style: TextStyle(color: Colors.black)),
              TextSpan(text: 'Conheça o Nubank Vida! ' , style: TextStyle(color: backgroundColor, fontWeight: FontWeight.w400)),
            ]
        ),
      ),
    );
  }
  _invite(){

    return Container(
      margin: const EdgeInsets.only(left: 20, top: 10, right: 5, bottom: 15),
      padding: const EdgeInsets.all(24),

      decoration: BoxDecoration(
          color: greyColor,
          borderRadius: BorderRadius.circular(16)

      ),
      child: RichText(
        text: TextSpan(
            children: [
              TextSpan(text: 'Salve amigos da burocracia.\n ', style: TextStyle(color: Colors.black)),
              TextSpan(text: 'Faça um convite para o Nubank. ' , style: TextStyle(color: backgroundColor, fontWeight: FontWeight.w400)),
            ]
        ),
      ),
    );
  }
}
