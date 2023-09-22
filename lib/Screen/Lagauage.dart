import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LangauagePage extends StatefulWidget {
  const LangauagePage({super.key});

  @override
  State<LangauagePage> createState() => _LangauagePageState();
}

class _LangauagePageState extends State<LangauagePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: const Text("Langauage Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle:Text('name'.tr) ,
          ),
          Row(
            children: [
              OutlinedButton(onPressed: () {
                Get.updateLocale(Locale("hi" ,"IN"));

              }, child: const Text("Hindi")),
              OutlinedButton(onPressed: () {
                Get.updateLocale(const Locale("en" ,"US"));


              }, child: const Text("English"))
            ],


          )
        ],
      ),
    ));
  }
}
