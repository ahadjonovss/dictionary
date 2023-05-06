import 'package:dictionary/utils/tools/file_importer.dart';

class SearchBar extends StatelessWidget {
  GlobalKey<ScaffoldState> myKey;
   SearchBar({required this.myKey,Key? key}) : super(key: key);

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
            myKey.currentState!.openDrawer();
          }, icon: const Icon(Icons.menu,color: Colors.white,)),


        ),
        Positioned(
          bottom: -30,
          left: 10,
          right: 10,
          child: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(12)
            ),
            width: width(context)*0.9,
            padding:const  EdgeInsets.all(8.0),
            child: TextField(
              //controller: searchController,
              decoration: const InputDecoration(
                  hintText: 'Search for a word',
                  prefixIcon:  Icon(Icons.search),
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
