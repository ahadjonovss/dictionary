import 'package:dictionary/utils/tools/file_importer.dart';

class DictionaryController extends GetxController {
  final DictionaryRepository dictionaryRepository = Get.put(DictionaryRepository());

  DictionaryController(){
    getAllWords();
  }

  List<TranslationModel> base = [];


  var dictionaryResponse = DictionaryResponse(words: [], status: FormStatus.pure, message: '').obs;
   getAllWords() async {
    dictionaryResponse.value.status=FormStatus.inProgress;
    try{
      dictionaryResponse.value.words = await dictionaryRepository.getAllWords();
      base = await dictionaryRepository.getAllWords();
      dictionaryResponse.value.status=FormStatus.inSuccess;
    }catch(e){
      dictionaryResponse.value.message=e.toString();
      dictionaryResponse.value.status=FormStatus.inFail;
    }
    return dictionaryRepository.getAllWords();
  }

  search(String word) async {
    dictionaryResponse.value.status=FormStatus.inProgress;
     List<TranslationModel> foundWords = [];
     for(var i in base){
       if((i.ru.toLowerCase()+i.uz.toLowerCase()).contains(word.toLowerCase())){
         foundWords.add(i);
       }
     }
    dictionaryResponse.value.words=foundWords;
    dictionaryResponse.value.status=FormStatus.inSuccess;
     notifyChildrens();
  }


}