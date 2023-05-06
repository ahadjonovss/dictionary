import 'package:dictionary/utils/tools/file_importer.dart';
import 'package:dictionary/utils/tools/sizes.dart';

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
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: height(context)*0.18,
                width: width(context),
                color: Colors.blue,

              ),
              IconButton(onPressed: () {
              }, icon: const Icon(Icons.menu,color: Colors.white,)),
              Positioned(
                bottom: -30,
                left: 10,
                right: 10,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  width: width(context)*0.9,
                  padding:const  EdgeInsets.all(8.0),
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: 'Search for a word',
                      prefixIcon:const  Icon(Icons.search),
                      border: InputBorder.none
                    ),
                    onChanged: (value) {
                      // TODO: Implement search functionality
                    },
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: wordList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(wordList[index]),
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
