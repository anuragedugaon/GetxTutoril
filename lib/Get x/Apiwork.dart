import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginApi extends GetxController {
  final emailController=TextEditingController().obs;
  final passController=TextEditingController().obs;
  RxBool loginStatus=false.obs;
  Future<void> login() async {
    loginStatus.value=true;
     final response=await post(Uri.parse("https://reqres.in/api/login"),
       body: {
       "email":emailController.value.text,
         "password":passController.value.text,
       }
   );
     var data= jsonDecode(response.body);
     print(data);
     print(response);
     if(response.statusCode==200){
       loginStatus.value=false;

       Get.snackbar("login succefull", "congress");
     }
     else{
       loginStatus.value=false;
       Get.snackbar("login failled", data["error"]);

     }

  }
}