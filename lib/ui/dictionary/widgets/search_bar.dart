import 'package:dictionary/utils/tools/file_importer.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          height: height(context)*0.18,
          width: width(context),
          alignment: Alignment.centerLeft,
          color: Colors.blue,
          child: IconButton(onPressed: () {
          }, icon: const Icon(Icons.menu,color: Colors.white,)),


        ),
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
              //controller: searchController,
              decoration: const InputDecoration(
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
    );
  }
}
