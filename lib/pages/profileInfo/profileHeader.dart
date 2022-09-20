import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/pages/home/home_page.dart';
import 'package:nubank_clone/utils/colors.dart';

class ProfileHeader extends StatefulWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  State<ProfileHeader> createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 7),
      color: greyB,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _leaveButton(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _profileIcon(),
              _iconText(),            ],
          ),
          _agencyText(),
        ],
      ),
    );
  }

  _leaveButton(){
    return GestureDetector(
      onTap: (){},
      child: Container(
        margin: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
        child: IconButton(
          onPressed: (){
            Navigator.
            of(context).push(_createRoute());
            //push(context, MaterialPageRoute(builder: (context) => const HomePage()),);
          },
          icon: const Icon(
              MdiIcons.close,color: Colors.black45),),
      ),
    );
  }

  _profileIcon(){
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80), color: secondaryPurple),
      child: const Icon(
          MdiIcons.accountOutline, color: Colors.white),
    );
  }
  _iconText(){
    return Row(
            children: const [
              SizedBox(width: 16,),
              Text('Fred Andrade', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black, fontSize: 16),)
            ],
    );
  }
  _agencyText(){
    return Container(
      margin: const EdgeInsets.only(top: 25,left: 20,bottom: 20),
      child: RichText(
        text: const TextSpan(
            children: [
              TextSpan(text: 'Agência 0001 ',style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 14),),
              TextSpan(text: '● ',style: TextStyle(color: Colors.black, fontSize: 6),),
              TextSpan(text: ' Conta 00000000-6\n' , style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 14),),
              TextSpan(text: 'Banco 0260 ', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500,height: 1.5, fontSize: 14)),
              TextSpan(text: '●  ',style: TextStyle(color: Colors.black, fontSize: 6),),
              TextSpan(text: ' Nu Pagamentos S.A. -Instituição de Pagamento', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500,height: 1.5, fontSize: 14)),
            ]
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const HomePage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

