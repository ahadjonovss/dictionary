
import 'package:dictionary/utils/tools/file_importer.dart';

class DescriptionBottomSheet extends StatelessWidget {
  final String word;
  final String description;
  final String translation;

  const DescriptionBottomSheet({
    Key? key,
    required this.word,
    required this.description,
    required this.translation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Container(
      height: mediaQuery.size.height * 0.7,
      padding: EdgeInsets.symmetric(
        horizontal: mediaQuery.size.width * 0.05,
        vertical: mediaQuery.size.height * 0.02,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(mediaQuery.size.width * 0.1),
          topRight: Radius.circular(mediaQuery.size.width * 0.1),
          bottomLeft: Radius.zero,
          bottomRight: Radius.zero,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: mediaQuery.size.height * 0.02,
          ),
          Center(
            child: Container(
              width: mediaQuery.size.width * 0.1,
              height: mediaQuery.size.height * 0.005,
              color: Colors.grey.withOpacity(0.5),
            ),
          ),
          SizedBox(
            height: mediaQuery.size.height * 0.02,
          ),
          Text(
            word,
            style: TextStyle(
              fontSize: mediaQuery.size.width * 0.06,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: mediaQuery.size.height * 0.02,
          ),
          Text(
            translation,
            style: TextStyle(
              fontSize: mediaQuery.size.width * 0.04,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: mediaQuery.size.height * 0.02,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Text(
                description,
                style: TextStyle(fontSize: mediaQuery.size.width * 0.04),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
