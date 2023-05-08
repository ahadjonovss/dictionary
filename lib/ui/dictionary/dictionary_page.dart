import 'package:dictionary/utils/tools/file_importer.dart';

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
      backgroundColor: Get.theme.backgroundColor,
      drawer: const DictionaryDrawer(),
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
