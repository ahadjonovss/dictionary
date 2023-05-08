import 'package:dictionary/utils/tools/file_importer.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  // Define your variables
  RxBool isDarkMode = false.obs;

  // Define your methods
  void changeTheme(bool isDark) {
    isDarkMode.value = isDark;
    Get.changeThemeMode(isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
  }
}
