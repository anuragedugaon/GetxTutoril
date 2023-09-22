import 'dart:ffi';

import 'package:get/get.dart';

class Favorites extends GetxController{
  List<String> name = ["Amit", "Abhit", "Ankit", "Arun", "Suraj", "Sahili", "Nitesh"].obs;
  List favName = [].obs;
  
  addFavorite(String value){
    favName.add(value);
  }
  removeFavorite(String value){
    favName.remove(value);
  }

}