import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Get x/Apiwork.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginApi imageController = Get.put(LoginApi());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller:imageController.emailController.value,
                decoration: const InputDecoration(
                  labelText: "Email",
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: imageController.passController.value,
                decoration: InputDecoration(
                  labelText: "Password",
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
             Obx(()  {
               return  ElevatedButton(
                 onPressed:() {
                   imageController.login();
                 },
                 child:imageController.loginStatus.value?CircularProgressIndicator():Container(
                   height: Get.height/15,
                   width: Get.width,
                   child: Center(child: Text("Login")),
                 ),
               );
             })
            ],
          ),
        ),
      ),
    );
  }
}
