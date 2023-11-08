import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/data/memory_management.dart';
import 'app/routes/app_pages.dart';

void main() async{
  WidgetsFlutterBinding().ensureVisualUpdate();
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesRepository.init();
  runApp(
      Sample()
  );
}
class Sample extends StatelessWidget {
  const Sample({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}

