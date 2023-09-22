import 'package:get/get.dart';

class SwitchController extends GetxController{
  RxBool notifications=false.obs;

  setNotifications(bool value){
    notifications.value=value;
  }
}