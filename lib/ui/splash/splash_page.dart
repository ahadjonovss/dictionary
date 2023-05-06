import 'package:dictionary/ui/home/home_page.dart';
import 'package:dictionary/utils/tools/file_importer.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) => Get.to(DictionaryPage()));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Image.asset('assets/1.png',width: 300,),
              Text("Splash")

            ]
        ),
      ),
    );
  }
}