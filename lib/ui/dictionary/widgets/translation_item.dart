import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class TranslationItem extends StatefulWidget {
  final String word;
  final String translation;

  const TranslationItem({
    Key? key,
    required this.word,
    required this.translation,
  }) : super(key: key);

  @override
  _TranslationItemState createState() => _TranslationItemState();
}

class _TranslationItemState extends State<TranslationItem> {
  bool _isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: ListTile(
        title: Text(widget.word),
        subtitle: Text(widget.translation),
        trailing: IconButton(
          icon: Icon(
            _isLiked ? Icons.favorite : Icons.favorite_border,
            color: _isLiked ? Colors.red : null,
          ),
          onPressed: () {
            setState(() {
              _isLiked = !_isLiked;
            });
          },
        ),
        onTap: () {
          // TODO: Implement word details page
        },
      ),
    );
  }
}
