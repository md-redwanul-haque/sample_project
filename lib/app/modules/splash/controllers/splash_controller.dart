import 'dart:math';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../db/db_provider.dart';
import '../model/sample_data_response.dart';
import '../provider/provider.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController


  @override
  void onInit() {

    super.onInit();
  }


  moveToNext() {
    fetchData();
    Future.delayed(const Duration(milliseconds: 3000), () async{

      Get.offNamed(Routes.HOME);

      //Get.toNamed(Routes.HOME);

    });
  }
  Random id = Random();
  var dataList  = <SampleData>[].obs;

  Future<void> fetchData() async{

    var res = await ApiCall().fetchData();
    dataList.value = await res!.toList(growable: true);
   for(var item in dataList.value){

     var todo = SampleData(
       id: item.id,
       userId: item.userId,
       title: item.title,
       body: item.body,
     );
     await DataBaseHelper.dbInstance.addSampleData(todo);

   }

  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }


}
