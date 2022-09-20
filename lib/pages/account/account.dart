
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/controller/controller_home_page.dart';

class MainAccount extends StatefulWidget {
  const MainAccount ({Key? key}) : super(key: key);

  @override
  State<MainAccount> createState() => _MainAccountState();
}

class _MainAccountState extends State<MainAccount> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _account(),
          const SizedBox(height: 12),
          _moneyCheck(),
        ],
      ),
    );
  }
  _account() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text('Conta', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
        Icon(MdiIcons.chevronRight, color: Colors.grey,)
      ],
    );
  }
  _moneyCheck() {
    return GetBuilder<ControllerHomePage>(
      init: ControllerHomePage(),
      builder: (controller) {
        return Text(
          controller.saldo, style: const TextStyle(fontSize: 18,
            fontWeight: FontWeight.w500),
        );
      }
    );
  }
}
