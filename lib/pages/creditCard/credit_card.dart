import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/utils/colors.dart';

class MyCreditCard extends StatelessWidget {
  const MyCreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.fromLTRB(20, 15, 20, 10),
      decoration: BoxDecoration(
        color: greyColor, borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: const [
          Icon(MdiIcons.creditCardOutline,),
          SizedBox(width: 12,),
          Text('Meus Cartões', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black,),),
        ],
      ),
    );
  }
}
