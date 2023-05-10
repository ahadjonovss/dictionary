import 'package:dictionary/utils/tools/file_importer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  Get.put(ThemeController());
  Get.put(DictionaryController());
  runApp(const App());
}
