import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ControllerHomePage extends GetxController{

  String saldo = 'R\$ 5.879.921,28';
  bool eyesValue = true;
  String creditCardValue = 'R\$ 36.428,00';

  void showValue(){

    eyesValue = !eyesValue;

    update();
  }
}