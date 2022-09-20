import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/utils/colors.dart';


class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _healthEnsuranse(),
          const Divider(thickness: 1.2,),
          _notifications(),
          const Divider(thickness: 1.2,),
          _help(),
          const Divider(thickness: 1.2,),
          _editProfile(),
          const Divider(thickness: 1.2,),
          _safety(),
          const Divider(thickness: 1.2,),
          _finance(),
          const Divider(thickness: 1.2,),
          _pix(),
          const Divider(thickness: 1.2,),
          _askForPj(),
          const Divider(thickness: 1.2,),
          _configureAcc(),
          const Divider(thickness: 1.2,),
          _configureCard(),
          const Divider(thickness: 1.2,),
          _about(),
          const Divider(thickness: 1.2,),
          _informe(),
          const Divider(thickness: 1.2,),
          _exit(),
        ],
      ),
    );
  }

  _healthEnsuranse(){
    return Container(
      padding: const EdgeInsets.all(3),
      margin: const EdgeInsets.only(right: 10, left: 20, top: 13,bottom: 10),
      child: Row(
        children: const [
          Icon(MdiIcons.heartOutline),
          SizedBox(width: 12,),
          Text('Seguro de Vida', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black,fontSize: 16),),
          Spacer(flex: 3,),
          Icon(MdiIcons.chevronRight, color: Colors.grey,)

        ],
      ),
    );
  }
  _notifications(){
    return Container(
      padding: const EdgeInsets.all(3),
      margin: const EdgeInsets.only(right: 10, left: 20, top: 13,bottom: 10),
      child: Row(
        children: const [
          Icon(MdiIcons.bellOutline),
          SizedBox(width: 12,),
          Text('Notificações', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black,fontSize: 16),),
          Spacer(flex: 3,),
          Icon(MdiIcons.chevronRight, color: Colors.grey,)
        ],
      ),
    );
  }
  _help(){
    return Container(
      padding: const EdgeInsets.all(3),
      margin: const EdgeInsets.only(right: 10, left: 20, top: 13,bottom: 10),
      child: Row(
        children: const [
          Icon(Icons.help_outline),
          SizedBox(width: 12,),
          Text('Me ajuda', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black,fontSize: 16),),
          Spacer(flex: 3,),
          Icon(MdiIcons.chevronRight, color: Colors.grey,)
        ],
      ),
    );
  }
  _editProfile(){
    return Container(
      padding: const EdgeInsets.all(3),
      margin: const EdgeInsets.only(right: 10, left: 20, top: 13,bottom: 10),
      child: Row(
        children: const [
          Icon(MdiIcons.accountOutline),
          SizedBox(width: 12,),
          Text('Editar dados do perfil', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black,fontSize: 16),),
          Spacer(flex: 3,),
          Icon(MdiIcons.chevronRight, color: Colors.grey,)

        ],
      ),
    );
  }
  _safety(){
    return Container(
      padding: const EdgeInsets.all(3),
      margin: const EdgeInsets.only(right: 10, left: 20, top: 13,bottom: 10),
      child: Row(
        children: const [
          Icon(MdiIcons.shieldOutline),
          SizedBox(width: 12,),
          Text('Segurança', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black,fontSize: 16),),
          Spacer(flex: 3,),
          Icon(MdiIcons.chevronRight, color: Colors.grey,)

        ],
      ),
    );
  }
  _finance(){
    return Container(
      padding: const EdgeInsets.all(3),
      margin: const EdgeInsets.only(right: 10, left: 20, top: 13,bottom: 10),
      child: Row(
        children: const [
          Icon(Icons.account_balance_outlined),
          SizedBox(width: 12,),
          Text('Open Finance', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black,fontSize: 16),),
          Spacer(flex: 3,),
          Icon(MdiIcons.chevronRight, color: Colors.grey,)

        ],
      ),
    );
  }
  _pix(){
    return Container(
      padding: const EdgeInsets.all(3),
      margin: const EdgeInsets.only(right: 10, left: 20, top: 13,bottom: 10),
      child: Row(
        children: const [
          Icon(MdiIcons.clover),
          SizedBox(width: 12,),
          Text('Configurar chaves Pix', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black,fontSize: 16),),
          Spacer(flex: 3,),
          Icon(MdiIcons.chevronRight, color: Colors.grey,)

        ],
      ),
    );
  }
  _askForPj(){
    return Container(
      padding: const EdgeInsets.all(3),
      margin: const EdgeInsets.only(right: 10, left: 20, top: 13,bottom: 10),
      child: Row(
        children: const [
          Icon(Icons.account_balance_outlined),
          SizedBox(width: 12,),
          Text('Pedir conta PJ', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black,fontSize: 16),),
          Spacer(flex: 3,),
          Icon(MdiIcons.chevronRight, color: Colors.grey,)

        ],
      ),
    );
  }
  _configureAcc(){
    return Container(
      padding: const EdgeInsets.all(3),
      margin: const EdgeInsets.only(right: 10, left: 20, top: 13,bottom: 10),
      child: Row(
        children: const [
          Icon(MdiIcons.cashMultiple),
          SizedBox(width: 12,),
          Text('Configurar conta', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black,fontSize: 16),),
          Spacer(flex: 3,),
          Icon(MdiIcons.chevronRight, color: Colors.grey,)

        ],
      ),
    );
  }
  _configureCard(){
    return Container(
      padding: const EdgeInsets.all(3),
      margin: const EdgeInsets.only(right: 10, left: 20, top: 13,bottom: 10),
      child: Row(
        children: const [
          Icon(Icons.account_balance_outlined),
          SizedBox(width: 12,),
          Text('Configurar cartão', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black,fontSize: 16),),
          Spacer(flex: 3,),
          Icon(MdiIcons.chevronRight, color: Colors.grey,)

        ],
      ),
    );
  }
  _about(){
    return Container(
      padding: const EdgeInsets.all(3),
      margin: const EdgeInsets.only(right: 10, left: 20, top: 13,bottom: 10),
      child: Row(
        children: const [
          Icon(Icons.account_balance_outlined),
          SizedBox(width: 12,),
          Text('Sobre', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black,fontSize: 16),),
          Spacer(flex: 3,),
          Icon(MdiIcons.chevronRight, color: Colors.grey,)

        ],
      ),
    );
  }
  _informe(){
    return Container(
      padding: const EdgeInsets.all(3),
      margin: const EdgeInsets.only(right: 10, left: 20, top: 13,bottom: 10),
      child: Row(
        children: const [
          Icon(Icons.account_balance_outlined),
          SizedBox(width: 12,),
          Text('Informe de rendimentos', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black,fontSize: 16),),
          Spacer(flex: 3,),
          Icon(MdiIcons.chevronRight, color: Colors.grey,)

        ],
      ),
    );
  }
  _exit(){
    return Container(
      padding: const EdgeInsets.all(3),
      margin: const EdgeInsets.only(right: 10, left: 20, top: 13,bottom: 15),
      child: Row(
        children: const [
          Icon(Icons.logout_outlined),
          SizedBox(width: 12,),
          Text('Sair do aplicativo', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black,fontSize: 16),),
          Spacer(flex: 3,),
          Icon(MdiIcons.chevronRight, color: Colors.grey,)

        ],
      ),
    );
  }
}