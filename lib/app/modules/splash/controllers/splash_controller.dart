import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../model/sample_data_response.dart';
import '../provider/provider.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController


  @override
  void onInit() {
   moveToNext();
    super.onInit();
  }


  moveToNext() {
    Future.delayed(const Duration(milliseconds: 2000), () async{
      //Get.offNamed(Routes.HOME);
      Get.toNamed(Routes.HOME);

    });
  }

  var dataList  = <SampleData>[].obs;
  Future<void> fetchData() async{

    var res = await ApiCall().fetchData();
    dataList.value = res!.toList(growable: true);
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
