import 'package:dictionary/utils/tools/file_importer.dart';

class DictionaryRepository{
  Future<List<TranslationModel>> getAllWords() async {
    ByteData data = await rootBundle.load('assets/dictionary.xlsx');

    // Decode the byte stream into an Excel object
    List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    var excel = Excel.decodeBytes(bytes);

    // Get the sheet you want to search
    var sheet = excel["Лист1"];

    List<TranslationModel> allWords = [];

    for (var row in sheet.rows) {
      var column1Value = row[1]; // First column value
      var column2Value = row[2]; // Second column value
      if(!column2Value.isNull){
        allWords.add(TranslationModel(ru: column1Value?.value??"", uz: column2Value?.value??""));
      }

    }
    return allWords;


  }
}