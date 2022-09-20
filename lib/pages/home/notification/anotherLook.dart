import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/utils/colors.dart';

class AnotherLook extends StatelessWidget {
  const AnotherLook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _giveALook(),
          _paymentAssistant(),
        ],
      ),
    );
  }

  _giveALook(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text('Acompanhe também', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
      ],
    );
  }
  _paymentAssistant(){
    return Container(
      padding: const EdgeInsets.all(12),
      margin: EdgeInsets.only(top: 25,bottom: 10),
      decoration: BoxDecoration(
        color: greyColor, borderRadius: BorderRadius.circular(8),

      ),
      child: Row(
        children: const [
          Icon(Icons.currency_exchange),
          SizedBox(width: 12,),
          Text('Assistente de pagamentos', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black,fontSize: 16),)
        ],
      ),
    );
  }
}
