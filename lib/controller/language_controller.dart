import 'dart:ui';
import 'package:get/get.dart';
import 'package:translation_example/storage/local_storage.dart';

class LanguagesController extends GetxController {
  LocalStorage localStorage = LocalStorage();
  var appLocal = 'ar';

  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    super.onInit();
    appLocal = await localStorage.readLocalStorage ?? 'ar';
    Get.updateLocale(Locale(appLocal));
    update();
  }

  changeLanguage(String language) async {
    if (language == 'ar') {
      appLocal = 'ar';
      localStorage.saveLocalStorage("ar");
    } else {
      appLocal = 'en';
      localStorage.saveLocalStorage("en");
    }
    update();
  }
}
