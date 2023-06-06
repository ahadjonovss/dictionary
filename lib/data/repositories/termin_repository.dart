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
    int rowCount = 0;

    for (var row in sheet.rows) {
      rowCount++;
      var column4Value = row[9];






      if (column4Value?.value != null && column4Value?.value.toString().length!=3) {
        allWords.add(TerminModel(
          word: column4Value!.value.toString().split("|").first,
          example: column4Value!.value.toString().split("|")[3],
          some: column4Value!.value.toString().split("|")[1],
          translation: column4Value!.value.toString().split("|")[2],
        ));
      }
    }
    return allWords;
  }
}
