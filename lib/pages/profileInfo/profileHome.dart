import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_clone/pages/profileInfo/profileHeader.dart';
import 'package:nubank_clone/pages/profileInfo/profileInfo.dart';
import 'package:nubank_clone/utils/colors.dart';

class ProfileHome extends StatelessWidget {
  const ProfileHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: const [
              ProfileHeader(),
              ProfileInfo(),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize _appBar(){
    return PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ));
  }
}
