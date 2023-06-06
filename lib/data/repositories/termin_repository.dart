import 'package:dictionary/data/models/termin_model.dart';
import 'package:dictionary/utils/tools/file_importer.dart';

class TerminRepository {
  Future<List<TerminModel>> getAllWords() async {
    ByteData data = await rootBundle.load('assets/historical.xlsx');

    // Decode the byte stream into an Excel object
    List<int> bytes =
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    var excel = Excel.decodeBytes(bytes);

    // Get the sheet you want to search
    var sheet = excel["Лист1"];

    List<TerminModel> allWords = [];


    for (var row in sheet.rows) {
      var column1Value = row[0];
      var column2Value = row[1];
      var column3Value = row[2];
      var column4Value = row[3];



     if(column4Value?.value!=null){

       allWords.add(TerminModel(
           word: column1Value?.value,
           some: column2Value?.value ?? "",
           translation: column3Value?.value ?? '',
           example:column4Value?.value));
     }

    }
    return allWords;
  }
}
