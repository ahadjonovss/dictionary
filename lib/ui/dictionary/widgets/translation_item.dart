
import 'package:dictionary/ui/dictionary/widgets/description_bottom_sheet.dart';
import 'package:dictionary/utils/tools/file_importer.dart';

class TranslationItem extends StatefulWidget {
  final String word;
  final String translation;

  const TranslationItem({
    Key? key,
    required this.word,
    required this.translation,
  }) : super(key: key);

  @override
  _TranslationItemState createState() => _TranslationItemState();
}

class _TranslationItemState extends State<TranslationItem> {

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Container(
      margin: EdgeInsets.all(mediaQuery.size.height * 0.01),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(mediaQuery.size.width * 0.03),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: mediaQuery.size.width * 0.005,
            blurRadius: mediaQuery.size.width * 0.02,
            offset: Offset(0, mediaQuery.size.width * 0.007), // changes position of shadow
          ),
        ],
      ),
      child: ListTile(
        title: Text(
          widget.word,
          style: TextStyle(fontSize: mediaQuery.size.width * 0.04),
        ),
        subtitle: Text(
          widget.translation,
          style: TextStyle(fontSize: mediaQuery.size.width * 0.035),
        ),
        onTap: () {
          showModalBottomSheet(
            backgroundColor: Colors.transparent,
            context: context,
            builder: (BuildContext context) {
              return DescriptionBottomSheet(
                word: widget.word,
                description: widget.translation,
                translation: widget.translation,
              );
            },
          );
        },
      ),
    );
  }
}
