import 'package:get/get.dart';

import '../../splash/db/db_provider.dart';
import '../../splash/model/sample_data_response.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  @override
  void onInit() {
    checks();
    super.onInit();
  }
  RxList<SampleData> dataList =<SampleData>[].obs;

  void checks()async{
    dataList.value=await DataBaseHelper.dbInstance.getData();
  }
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
