import 'package:dictionary/utils/tools/file_importer.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    accentColor: Colors.green,
    // Define your light mode theme properties here
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.purple,
    accentColor: Colors.orange,
    // Define your dark mode theme properties here
  );
}
