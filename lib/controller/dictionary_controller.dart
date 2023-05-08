import 'package:dictionary/utils/tools/file_importer.dart';

class DictionaryController extends GetxController {
  final DictionaryRepository dictionaryRepository = Get.find();

  var dictionaryResponse = DictionaryResponse(words: [], status: FormStatus.pure, message: '').obs;

  void getAllWords() async {
    dictionaryResponse.value.status=FormStatus.inProgress;
    try{
      dictionaryResponse.value.words = await dictionaryRepository.getAllWords();
      dictionaryResponse.value.status=FormStatus.inSuccess;
    }catch(e){
      dictionaryResponse.value.message=e.toString();
      dictionaryResponse.value.status=FormStatus.inFail;
    }
  }
}