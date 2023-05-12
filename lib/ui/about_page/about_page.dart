import 'package:dictionary/utils/tools/file_importer.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfScreen extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<PdfScreen> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();




  @override
  void initState() {
    super.initState();
  }
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ilova haqida"),),
      body: SfPdfViewer.asset(
        "assets/so'zboshi.pdf",
        key: _pdfViewerKey,
      ),
    );
  }
}