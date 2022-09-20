
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/utils/colors.dart';

class CardDebt extends StatelessWidget {
  const CardDebt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _textCreditCard(),
          _saldo(),
          _parcelar(),
        ],
      ),
    );
  }
  _textCreditCard(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text('Cartão de crédito', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),

        Icon(MdiIcons.chevronRight)
      ],
    );
  }
  _saldo(){
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: RichText(
        text: const TextSpan(
            children: [
              TextSpan(text: 'Fatura atual\n' , style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 14),),
              TextSpan(text: 'R\$ 22.430,00\n', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, height: 1.8, fontSize: 20)),
              TextSpan(text: 'Limite disponível de R\$27.570,00 ' , style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500,height: 1.5, fontSize: 14)),

            ]
        ),
      ),
    );
  }
  _parcelar(){
    return Container(
      padding: const EdgeInsets.all(8),
      margin: EdgeInsets.only(top: 25,bottom: 10, right: 168),
      decoration: BoxDecoration(
        color: greyColor, borderRadius: BorderRadius.circular(24),

      ),
      child: Row(
        children: const [
          SizedBox(width: 3,),
          Text('Parcelar compras', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black,fontSize: 16),)
        ],
      ),
    );
  }
}
