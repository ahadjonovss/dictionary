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
          IconButton(onPressed: () {
            searchExcelFile('assets/dictionary.xlsx', "alik");

          }, icon: Icon(Icons.search))
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: wordList.length,
          //     itemBuilder: (context, index) {
          //       return TranslationItem(word: wordList[index], translation: wordList[index]);
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}



Future<void> searchExcelFile(String filePath, String searchWord) async {
  print("Keldik");
  // Load the Excel file as a byte stream
  ByteData data = await rootBundle.load(filePath);

  // Decode the byte stream into an Excel object
  List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
  var excel = Excel.decodeBytes(bytes);

  // Get the sheet you want to search
  var sheet = excel["Лист1"];

  // Define a function to search for the word or string in a row
  bool searchForRow(List<dynamic> row, String word) {
    for (var cell in row) {
      if (cell.toString().contains(word)) {
        print(cell);
        return true;
      }
    }
    return false;
  }

  // Loop through each row of the sheet and call the searchForRow function
  List<List<dynamic>> rows = sheet.rows;
  for (var i = 0; i < rows.length; i++) {
    if (searchForRow(rows[i], searchWord)) {
      print('Found in row ${i + 1}');
    }
  }
}

