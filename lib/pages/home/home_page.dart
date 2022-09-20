import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_clone/pages/account/account.dart';
import 'package:nubank_clone/pages/cardDebt/cardDebt.dart';
import 'package:nubank_clone/pages/creditCard/credit_card.dart';
import 'package:nubank_clone/pages/home/models/header.dart';
import 'package:nubank_clone/actions/menu_itens.dart';
import 'package:nubank_clone/pages/home/notification/anotherLook.dart';
import 'package:nubank_clone/pages/home/notification/notification_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: backgroundColor,
      appBar: appBar(),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Header(),
              MainAccount(),
              MenuItens(),
              MyCreditCard(),
              NotificationPage(),
              Divider(thickness: 1.2,),
              CardDebt(),
              Divider(thickness: 1.2,),
              AnotherLook(),
              Divider(thickness: 1.2,),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize appBar(){
    return PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ));
  }
}
