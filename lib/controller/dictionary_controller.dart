import 'package:dictionary/utils/tools/file_importer.dart';

class DictionaryController extends GetxController {
  final DictionaryRepository dictionaryRepository = Get.put(DictionaryRepository());

  DictionaryController(){
    getAllWords();
  }


  var dictionaryResponse = DictionaryResponse(words: [], status: FormStatus.pure, message: '').obs;
   getAllWords() async {
    dictionaryResponse.value.status=FormStatus.inProgress;
    try{
      dictionaryResponse.value.words = await dictionaryRepository.getAllWords();
      dictionaryResponse.value.status=FormStatus.inSuccess;
    }catch(e){
      dictionaryResponse.value.message=e.toString();
      dictionaryResponse.value.status=FormStatus.inFail;
    }
    return dictionaryRepository.getAllWords();
  }

  search(String word) async {
    dictionaryResponse.value.status=FormStatus.inProgress;
    List<TranslationModel> allWords = await getAllWords();
     List<TranslationModel> foundWords = [];
     for(var i in allWords){
       if((i.ru+i.uz).contains(word)){
         foundWords.add(i);
       }
     }
    dictionaryResponse.value.words=foundWords;
     print("Result ketdi");
    dictionaryResponse.value.status=FormStatus.inSuccess;
     notifyChildrens();
  }


}