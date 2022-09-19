import 'package:get_storage/get_storage.dart';

class LocalStorage {
  final box = GetStorage();

  /// write The local storage
  saveLocalStorage(String path) async {
    await box.write('lan', path);
  }

  /// read the local storage
  Future<String> get readLocalStorage async {
    return await box.read('lan');
  }
}
