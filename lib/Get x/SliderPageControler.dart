import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SliderPageMannage extends  GetxController{
  RxDouble opacity=.2.obs;

  setOpacity(double value){
    opacity.value=value;


  }
}