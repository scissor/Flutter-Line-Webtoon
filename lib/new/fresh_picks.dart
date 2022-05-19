import 'package:flutter/material.dart';
import 'package:webtoon/models/book_model.dart';

import '../utils/utils.dart';

class FreshPicks extends StatelessWidget {
  List<BookModel> _models;

  FreshPicks(this._models, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: GridView.builder(
        primary: false,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 0.65),
        itemCount: _models.length,
        itemBuilder: (context, index) {
          return buildItem(index);
        },
      ),
    );
  }

  Widget buildItem(int index) {
    if (_models.isEmpty) {
      return const SizedBox.shrink();
    }

    var model = _models[index];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Utils.loadImage(model.thumbnail, fit: BoxFit.fitWidth),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Utils.sizeText(model.representGenre, 10, color: Colors.grey),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 5, right: 5),
          child: Utils.sizeText(model.title, 14),
        ),
      ],
    );
  }
}
