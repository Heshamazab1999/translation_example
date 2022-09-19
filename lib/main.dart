import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:translation_example/controller/language_controller.dart';
import 'package:translation_example/translation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final controller = Get.put(LanguagesController());
    return GetMaterialApp(
      translations: Translation(),
      locale: Locale("en"),
      fallbackLocale: Locale("en"),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("name".tr, style: TextStyle(fontSize: 25)),
              Text("email".tr, style: TextStyle(fontSize: 25)),
              ElevatedButton(
                  onPressed: () {
                     controller.changeLanguage("en");
                    Get.updateLocale(Locale("en"));
                  },
                  child: Text("en")),
              ElevatedButton(
                  onPressed: () {
                     controller.changeLanguage("ar");
                    Get.updateLocale(Locale("ar"));
                  },
                  child: Text("ar")),
            ],
          ),
        ),
      ),
    );
  }
}
