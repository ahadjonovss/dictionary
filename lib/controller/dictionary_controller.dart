import 'package:dictionary/utils/tools/file_importer.dart';

class DictionaryController extends GetxController {
  final DictionaryRepository dictionaryRepository = Get.find();

  var allWords = <TranslationModel>[].obs;

  void getAllWords() async {
    allWords.value = await dictionaryRepository.getAllWords();
  }



}