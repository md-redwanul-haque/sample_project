import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../splash/controllers/splash_controller.dart';
import '../controllers/home_controller.dart';

class DetailsView extends GetView {
  int index;
   DetailsView({required this.index, Key? key}) : super(key: key);
  HomeController ControllerH =Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailsView'),
        centerTitle: true,
      ),
      body:  Center(
        child: Text("T${ControllerH.
        todoList[index].body}"),
      ),
    );
  }
}
