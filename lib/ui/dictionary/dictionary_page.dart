import 'package:dictionary/utils/tools/file_importer.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';


class DictionaryPage extends StatefulWidget {
  const DictionaryPage({super.key});

  @override
  DictionaryPageState createState() => DictionaryPageState();
}

class DictionaryPageState extends State<DictionaryPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  DictionaryController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Theme.of(context).backgroundColor,
      drawer:  DictionaryDrawer(),
      body: Column(
        children: [
          SearchBar(myKey: _scaffoldKey),
          Obx(() {
            if(controller.dictionaryResponse.value.status==FormStatus.inProgress){
              return CircularProgressIndicator();
            }else if(controller.dictionaryResponse.value.status==FormStatus.inFail){
              return Text(controller.dictionaryResponse.value.message);
            }else if(controller.dictionaryResponse.value.status==FormStatus.inSuccess){
              return Expanded(
                child: ListView.builder(
                  itemCount: controller.dictionaryResponse.value.words.length,
                  itemBuilder: (context, index) {
                    return TranslationItem(translation:  controller.dictionaryResponse.value.words[index],);
                  },
                ),
              );
            }else{
              controller.getAllWords();
              return Text("No data");
            }
          })


        ],
      ),
    );
  }
}





