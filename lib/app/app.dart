import 'package:dictionary/utils/tools/file_importer.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyApp();
  }
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Yangi Konstitutsiya tahriri',
        debugShowCheckedModeBanner: false,
        theme: Get.find<ThemeController>().isDarkMode.value
            ? AppTheme.darkTheme
            : AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        home: SplashPage()
    );
  }
}