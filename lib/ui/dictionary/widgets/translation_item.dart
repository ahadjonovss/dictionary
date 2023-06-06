import 'package:dictionary/data/models/termin_model.dart';
import 'package:dictionary/ui/description_page/description_page.dart';
import 'package:dictionary/utils/tools/file_importer.dart';

class TranslationItem extends StatelessWidget {
  TerminModel translation;

   TranslationItem({
    Key? key,
    required this.translation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Container(
      margin: EdgeInsets.all(mediaQuery.size.height * 0.01),
      decoration: BoxDecoration(
        color: Get.theme.backgroundColor,
        borderRadius: BorderRadius.circular(mediaQuery.size.width * 0.03),
        boxShadow: [
          BoxShadow(
            color: Get.theme.shadowColor.withOpacity(0.5),
            spreadRadius: mediaQuery.size.width * 0.005,
            blurRadius: mediaQuery.size.width * 0.02,
            offset: Offset(0, mediaQuery.size.width * 0.007), // changes position of shadow
          ),
        ],
      ),
      child: ListTile(
        title: Text(
          translation.word,
          style: TextStyle(fontSize: mediaQuery.size.width * 0.04,color: Theme.of(context).cardColor),
        ),
        onTap: () {
         Navigator.push(context, MaterialPageRoute(builder: (context) => DescriptionPage(terminModel: translation),));
        },
      ),
    );
  }
}
