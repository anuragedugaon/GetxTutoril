import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutorial/Screen/Lagauage.dart';
import 'package:getxtutorial/Screen/LoginPage.dart';

import 'Counter.dart';
import 'ImagePicker.dart';
import 'ListView.dart';
import 'Slider.dart';
import 'SwitchPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Get X"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.snackbar("snack bar", "Alert",
                      borderRadius: 20,
                      backgroundColor: Colors.deepOrange,
                      snackPosition: SnackPosition.TOP);
                },
                child: const Text("Snack Bar")),
            ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                    backgroundColor: Colors.white,
                    title: "Close to Alert dialog",
                    titlePadding: const EdgeInsets.all(20),
                    contentPadding: const EdgeInsets.all(20),
                    middleText:
                        "are you sure you want to close the alert dialog",
                    // textCancel: "cancel",
                    //  textConfirm: "close"
                    confirm: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text("close")),
                    cancel: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text("cancel")),
                  );
                },
                child: const Text("Alert Box")),
            ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(Container(
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode_outlined),
                          title: Text("Light Theme"),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode_outlined),
                          title: Text("Dark Theme"),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  ));
                },
                child: const Text("Button Sheet")),
            ElevatedButton(
                onPressed: () {
                  Get.to(const LangauagePage());
                },
                child: const Text("Change Laguage")),
            ElevatedButton(
                onPressed: () {
                  Get.to(const CounterPage());
                },
                child: const Text("Counter Page Use get x")),
            ElevatedButton(
                onPressed: () {
                  Get.to(const SliderPage());
                },
                child: const Text("Slider Page Use get x")),
            ElevatedButton(
                onPressed: () {
                  Get.to(const SwitchPage());
                },
                child: const Text("Switch Page Use get x")),
            ElevatedButton(
                onPressed: () {
                  Get.to(const AddFavourite());
                },
                child: const Text("ListPage Page Use get x")),
            ElevatedButton(
                onPressed: () {
                  Get.to(const ImagePikerPage());
                },
                child: const Text("Image Picket")),

            ElevatedButton(
                onPressed: () {
                  Get.to(const LoginPage());
                },
                child: const Text("Login Page Use get x")),

          ],
        ),
      ),
    ));
  }
}
