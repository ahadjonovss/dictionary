import 'package:dictionary/data/models/termin_model.dart';
import 'package:dictionary/data/repositories/termin_repository.dart';
import 'package:dictionary/data/responses/termin_response.dart';
import 'package:dictionary/utils/tools/file_importer.dart';

class DictionaryController extends GetxController {
  final TerminRepository terminRepository = Get.put(TerminRepository());

  DictionaryController(){
    getAllWords();
  }

  List<TerminModel> base = [];


  var terminResponse = TerminResponse(words: [], status: FormStatus.pure, message: '').obs;
   getAllWords() async {
     terminResponse.value.status=FormStatus.inProgress;
    try{
      terminResponse.value.words = await terminRepository.getAllWords();
      base = await terminRepository.getAllWords();
      terminResponse.value.status=FormStatus.inSuccess;
    }catch(e){
      terminResponse.value.message=e.toString();
      terminResponse.value.status=FormStatus.inFail;
    }
    return terminRepository.getAllWords();
  }

  search(String word) async {
    terminResponse.value.status=FormStatus.inProgress;
     List<TerminModel> foundWords = [];
     for(var i in base){
       if((i.word.toLowerCase()).contains(word.toLowerCase())){
         foundWords.add(i);
       }
     }
    terminResponse.value.words=foundWords;
    terminResponse.value.status=FormStatus.inSuccess;
     notifyChildrens();
  }


}