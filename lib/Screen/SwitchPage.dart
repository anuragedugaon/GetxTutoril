import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Get x/SwitchPageController.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({super.key});

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  SwitchController notification=Get.put(SwitchController());
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      appBar: AppBar(title: const Text("Notification")),
      body: Column(
        children: [
          Obx(() => Switch(value: notification.notifications.value, onChanged: (value) {
            notification.setNotifications(value);
          },)),
          Obx(() {
            return notification.notifications.value==true ?  Container(
              height: Get.height/2,
              width: Get.width,
              decoration: const BoxDecoration(color: Colors.red ,
              ),
              child: const Text("Light Theme"),

            ):Container(
              height: Get.height/2,
              width: Get.width,
              decoration: const BoxDecoration(color: Colors.orange ,
              ),
              child: const Text("Dark Theme"),
            );
          }),
        ],
      ),
    ));
  }
}
