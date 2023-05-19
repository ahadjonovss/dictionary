import 'package:dictionary/utils/tools/file_importer.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:lottie/lottie.dart';


class DictionaryPage extends StatefulWidget {
  const DictionaryPage({super.key});

  @override
  DictionaryPageState createState() => DictionaryPageState();
}

class DictionaryPageState extends State<DictionaryPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  DictionaryController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Theme.of(context).backgroundColor,
      drawer:  DictionaryDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
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
                          _scaffoldKey.currentState!.openDrawer();
                        }, icon: const Icon(Icons.menu,color: Colors.blue,)),
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 3), // changes position of shadow
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)
                          ),
                          width: width(context)*0.8,
                          child: TextField(
                            //controller: searchController,
                            style: const TextStyle(color: Colors.black),
                            autofocus: false,

                            decoration:  InputDecoration(
                                hintText: 'Qidirish',
                                prefixIcon:  Icon(Icons.search,color: Colors.black.withOpacity(0.5),),
                                border: InputBorder.none,
                                hintStyle: TextStyle(color: Colors.black.withOpacity(0.5))
                            ),
                            onChanged: (value) {
                              controller.search(value.trim());
                              setState(() {});
                            },
                          ),
                        ),

                      ],
                    )
                  ],
                )


            ),
            Obx(() {
              if(controller.dictionaryResponse.value.status==FormStatus.inProgress){
                return const CircularProgressIndicator();
              }else if(controller.dictionaryResponse.value.status==FormStatus.inFail){
                return Text(controller.dictionaryResponse.value.message);
              }else if(controller.dictionaryResponse.value.status==FormStatus.inSuccess){
                if(controller.dictionaryResponse.value.words.isEmpty){
                  return Lottie.asset("assets/no_data.json");
                }else{
                  return Expanded(
                    child: ListView.builder(
                      itemCount: controller.dictionaryResponse.value.words.length,
                      itemBuilder: (context, index) {
                        return TranslationItem(translation:  controller.dictionaryResponse.value.words[index],);
                      },
                    ),
                  );
                }

              }else{
                controller.getAllWords();
                return Text("No data");
              }
            })
          ],
        ),
      ),
    );
  }
}





