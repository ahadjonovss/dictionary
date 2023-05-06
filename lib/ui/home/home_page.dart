
import 'package:dictionary/utils/tools/file_importer.dart';

class DictionaryPage extends StatefulWidget {
  @override
  _DictionaryPageState createState() => _DictionaryPageState();
}

class _DictionaryPageState extends State<DictionaryPage> {
  TextEditingController _searchController = TextEditingController();
  List<String> _wordList = ['apple', 'banana', 'cherry', 'date', 'elderberry'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dictionary App'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search for a word',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onChanged: (value) {
                // TODO: Implement search functionality
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _wordList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_wordList[index]),
                  onTap: () {
                    // TODO: Implement word details page
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
