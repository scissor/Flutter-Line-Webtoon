import 'package:flutter/material.dart';
import 'package:webtoon/models/episode_content_model.dart';
import 'package:webtoon/utils/utils.dart';

class EpisodeContent extends StatelessWidget {
  late final EpisodeContentModel _model;
  late final BuildContext _context;

  EpisodeContent(this._model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _context = context;

    var widgets = <Widget>[];
    for (var image in _model.imageInfo) {
      widgets.add(Utils.loadImage(image.url));
    }

    return MaterialApp(
      home: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            buildAppBar(innerBoxIsScrolled),
          ],
          body: ListView(
            children: widgets,
          ),
        ),
      ),
    );
  }

  SliverAppBar buildAppBar(bool innerBoxIsScrolled) {
    return SliverAppBar(
      floating: true,
      pinned: true,
      snap: true,
      forceElevated: innerBoxIsScrolled,
      leading: BackButton(
        color: Colors.white,
        onPressed: () => Navigator.pop(_context),
      ),
      backgroundColor: Colors.grey,
      actions: const [
        Icon(Icons.favorite_outline),
        Padding(padding: EdgeInsets.only(right: 5)),
        Icon(Icons.info),
        Padding(padding: EdgeInsets.only(right: 5)),
        Icon(Icons.ios_share),
        Padding(padding: EdgeInsets.only(right: 10)),
      ],
    );
  }
}
