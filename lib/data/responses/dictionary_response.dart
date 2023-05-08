import 'package:dictionary/utils/tools/file_importer.dart';

class DictionaryResponse{
  List<TranslationModel> words;
  FormStatus status;
  String message;

  DictionaryResponse({required this.words,required this.status,required this.message});
}