import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Get x/SliderPageControler.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  SliderPageMannage controler =Get.put(SliderPageMannage());
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("Slider")),
      body: Column(
        children: [
         Obx(() =>  Container(
             height: Get.height/4,
             width: Get.width/2,
             color: Colors. orange.withOpacity(controler.opacity.value),
         )),
          Obx(() => Slider(value: controler.opacity.value, onChanged: (value){
            controler.setOpacity(value);

          }))
        ],
      ),
    ));
  }
}
