import 'package:dictionary/utils/tools/file_importer.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    backgroundColor: Colors.white,
    shadowColor: Colors.grey,
    cardColor: Colors.black,
    accentColor: Colors.blue,
    hintColor: Colors.blue
    // Define your light mode theme properties here
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    backgroundColor: Colors.black.withOpacity(0.9),
    shadowColor: Colors.white,
      cardColor: Colors.white,
      accentColor: Colors.blueAccent,
    hintColor: Colors.black


    // Define your dark mode theme properties here
  );
}
