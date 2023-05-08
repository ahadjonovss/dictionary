import 'package:dictionary/utils/tools/file_importer.dart';

void main() {
  Get.put(ThemeController());
  Get.put(DictionaryController());
  Get.put(DictionaryRepository());
  runApp(const App());
}
