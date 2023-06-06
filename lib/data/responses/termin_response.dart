import 'package:dictionary/data/models/termin_model.dart';
import 'package:dictionary/utils/tools/file_importer.dart';

class TerminResponse{
  List<TerminModel> words;
  FormStatus status;
  String message;

  TerminResponse({required this.words,required this.status,required this.message});
}