import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../splash/controllers/splash_controller.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Obx(()=>ListView.builder(
                shrinkWrap: true,
                itemCount:Get.find<SplashController>().dataList.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index){
                  return ListTile(
                    title: Text("This is Data ${Get.find<SplashController>().dataList[index].title}"),
                  );
                }))
          ],
        ),
      )
    );
  }
}
