import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../splash/controllers/splash_controller.dart';
import '../controllers/home_controller.dart';
import 'details_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //controller.checks();
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
                itemCount:controller.todoList.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index){
                  return ListTile(
                    onTap: (){
                      Get.to(()=>DetailsView(index: index,));
                    },
                    title: Text("$index ${controller.
                    todoList[index].title}"),
                  );
                }))
          ],
        ),
      )
    );
  }
}
