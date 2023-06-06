import 'package:dictionary/data/models/termin_model.dart';
import 'package:dictionary/utils/tools/file_importer.dart';

class DescriptionPage extends StatelessWidget {
  TerminModel terminModel;
   DescriptionPage({required this.terminModel,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeController.isDarkMode.isTrue?Colors.black:Colors.blue,
        title: Text(terminModel.word),
      ),
      body: Container(
        color: themeController.isDarkMode.isTrue?Colors.black:Colors.white,
        height: height(context),
        width: width(context),
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(terminModel.word,style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 20,fontStyle: FontStyle.italic)),
            const SizedBox(height: 20),
            const Text("Mazmuni:",style: TextStyle(fontSize: 12,color: Colors.grey)),
            const SizedBox(height: 12),
            Text(terminModel.translation,style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 14)),
            const SizedBox(height: 12),
            Theme(
              data: ThemeData(dividerColor: Colors.transparent),
              child: ExpansionTile(
                collapsedIconColor: themeController.isDarkMode.isTrue?Colors.white:Colors.black,

                  title: Text("Namuna",style: TextStyle(color: themeController.isDarkMode.isTrue?Colors.white:Colors.black),),
               tilePadding: const EdgeInsets.only(left: 0),
                children: [
                  Text(terminModel.example,style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 16,fontStyle: FontStyle.italic)),

                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}
