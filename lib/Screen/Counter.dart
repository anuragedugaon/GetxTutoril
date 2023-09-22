import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutorial/Get%20x/GetController.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final CounterController controller= Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Obx(() {
            return Text(controller.counter.toString());
          }),)
        ],
        
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        controller.incrementCounter();
      },),
    ));
  }
}
