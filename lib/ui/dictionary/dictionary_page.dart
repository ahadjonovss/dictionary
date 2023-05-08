import 'package:dictionary/data/repositories/dictioary_repository.dart';
import 'package:dictionary/utils/tools/file_importer.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:flutter_excel/excel.dart';

class DictionaryPage extends StatefulWidget {
  const DictionaryPage({super.key});

  @override
  DictionaryPageState createState() => DictionaryPageState();
}

class DictionaryPageState extends State<DictionaryPage> {
  TextEditingController searchController = TextEditingController();
  List<String> wordList = ['apple', 'banana', 'cherry', 'date', 'elderberry'];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Theme.of(context).backgroundColor,
      drawer:  DictionaryDrawer(onThemeChanged:(){
        setState(() {
          print("Theme has been changed");

        });
      }),
      body: Column(
        children: [
          SearchBar(myKey: _scaffoldKey),
          Expanded(
            child: ListView.builder(
              itemCount: wordList.length,
              itemBuilder: (context, index) {
                return TranslationItem(word: wordList[index], translation: wordList[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}





