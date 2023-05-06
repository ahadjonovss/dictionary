import 'package:dictionary/ui/dictionary/widgets/search_bar.dart';
import 'package:dictionary/ui/dictionary/widgets/translation_item.dart';
import 'package:dictionary/utils/tools/file_importer.dart';

class DictionaryPage extends StatefulWidget {
  const DictionaryPage({super.key});

  @override
  DictionaryPageState createState() => DictionaryPageState();
}

class DictionaryPageState extends State<DictionaryPage> {
  TextEditingController searchController = TextEditingController();
  List<String> wordList = ['apple', 'banana', 'cherry', 'date', 'elderberry'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SearchBar(),
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
