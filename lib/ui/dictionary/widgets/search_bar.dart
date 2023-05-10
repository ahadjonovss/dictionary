import 'package:dictionary/utils/tools/file_importer.dart';

class SearchBar extends StatelessWidget {
  GlobalKey<ScaffoldState> myKey;
   SearchBar({required this.myKey,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: width(context),
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: () {
                myKey.currentState!.openDrawer();
              }, icon: const Icon(Icons.menu,color: Colors.blue,)),
              Container(
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
                width: width(context)*0.8,
                child: TextField(
                  //controller: searchController,
                  style: TextStyle(color: Get.theme.cardColor),
                  decoration:  InputDecoration(
                      hintText: 'Search for a word',
                      prefixIcon:  Icon(Icons.search,color: Colors.black.withOpacity(0.5),),
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.black.withOpacity(0.5))
                  ),
                  onChanged: (value) {
                    // TODO: Implement search functionality
                  },
                ),
              ),

            ],
          )
        ],
      )


    );
  }
}
