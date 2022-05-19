import 'package:flutter/material.dart';

import '../models/recommend_model.dart';
import '../utils/utils.dart';

class ChallengeRecommend extends StatelessWidget {
  final double _width = 120;
  final double _height = 210;
  final List<RecommendModel> _models;

  ChallengeRecommend(this._models);

  @override
  Widget build(BuildContext context) {
    var widgets = <Widget>[];
    for (var model in _models) {
      widgets.add(
        Container(
          padding: const EdgeInsets.only(right: 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: SizedBox(
              width: _width,
              height: _height,
              child: buildContent(model),
            ),
          ),
        ),
      );
    }

    return SizedBox(
      height: _height,
      child: ListView(
        padding: const EdgeInsets.only(left: 10),
        controller: PageController(viewportFraction: 0.8),
        scrollDirection: Axis.horizontal,
        children: widgets,
      ),
    );
  }

  Widget buildContent(RecommendModel model) {
    return Stack(
      children: [
        Positioned.fill(
          child: Utils.loadImage(model.mobileImageUrl, fit: BoxFit.fill),
        ),
        Positioned.fill(
          top: _height * 0.5,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black12, Colors.black87]),
            ),
          ),
        ),
        Column(
          verticalDirection: VerticalDirection.up,
          children: [
            Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 10, bottom: 15),
                child: Text(model.titleInfo.title)),
            Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 10),
                child: Utils.sizeText(model.titleInfo.representGenre, 10)),
          ],
        )
      ],
    );
  }
}
