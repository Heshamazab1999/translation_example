import 'package:get/get.dart';
import 'package:translation_example/utils/ar.dart';
import 'package:translation_example/utils/en.dart';

class Translation extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "en": en,
        "ar": ar,
      };
}
