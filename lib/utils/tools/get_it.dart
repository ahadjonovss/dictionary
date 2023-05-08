import 'package:dictionary/utils/tools/file_importer.dart';

class GetIt extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DictionaryRepository>(() => DictionaryRepository());
  }
}