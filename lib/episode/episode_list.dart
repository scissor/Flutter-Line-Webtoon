import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:webtoon/models/episode_model.dart';
import 'package:webtoon/models/episodelist_model.dart';

import '../utils/api_provider.dart';
import '../utils/utils.dart';

class EpisodeList extends StatelessWidget {
  final Color _infoColor = const Color(0xFF9AB710);
  late BuildContext _context;
  final int _titleNo;

  EpisodeList(this._titleNo, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _context = context;

    return FutureBuilder(
      future: apiProvider.loadEpisodeList(_titleNo),
      builder: (context, AsyncSnapshot<EpisodeListModel> snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        return MaterialApp(
          home: Scaffold(
            appBar: buildAppBar(),
            backgroundColor: _infoColor,
            body: ListView(
              children: [
                buildInfo(),
                buildList(snapshot.data!.episode),
              ],
            ),
          ),
        );
      },
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: BackButton(
        color: Colors.white,
        onPressed: () => Navigator.pop(_context),
      ),
      backgroundColor: _infoColor,
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

  Widget buildInfo() {
    var model = apiProvider.episodeInfo;
    return Stack(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 15),
          color: _infoColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Utils.sizeText(model.representGenre, 12),
              const Padding(padding: EdgeInsets.only(bottom: 10)),
              Utils.sizeText(model.title, 24),
              const Padding(padding: EdgeInsets.only(bottom: 10)),
              Utils.sizeText(model.writingAuthorName, 12),
              const Padding(padding: EdgeInsets.only(bottom: 10)),
              Utils.sizeText(model.synopsis, 14),
              const Padding(padding: EdgeInsets.only(bottom: 15)),
              buildInfoStatistic(),
              const Padding(padding: EdgeInsets.only(bottom: 15)),
            ],
          ),
        ),
        Positioned(
          right: 20,
          child: ClipOval(
            child: Utils.loadImageBySize(model.thumbnail, 120, 120),
          ),
        ),
      ],
    );
  }

  Widget buildInfoStatistic() {
    var model = apiProvider.episodeInfo;

    return Row(
      children: [
        const Icon(Icons.remove_red_eye, size: 14, color: Colors.white),
        const Padding(padding: EdgeInsets.only(right: 5)),
        Utils.sizeText(model.readCount.toString(), 14),
        const Padding(padding: EdgeInsets.only(right: 10)),
        const Icon(Icons.group_add, size: 14, color: Colors.white),
        const Padding(padding: EdgeInsets.only(right: 5)),
        Utils.sizeText(model.favoriteCount.toString(), 14),
        const Padding(padding: EdgeInsets.only(right: 10)),
        const Icon(Icons.star, size: 14, color: Colors.white),
        const Padding(padding: EdgeInsets.only(right: 5)),
        Utils.sizeText(model.starScoreAverage.toString(), 14),
      ],
    );
  }

  Widget buildList(List<EpisodeModel> models) {
    var widgets = <Widget>[];
    for (var model in models) {
      widgets.add(
        InkWell(
          onTap: () => Utils.loadEpisodeContent(
              _context, model.titleNo, model.episodeNo),
          child: buildItem(model),
        ),
      );
    }

    return Container(
      color: Colors.white,
      child: Column(
        children: widgets,
      ),
    );
  }

  Widget buildItem(EpisodeModel model) {
    var dateTime = DateTime.fromMillisecondsSinceEpoch(model.exposureYmdt);
    var date = DateFormat('yyyy年M月d日').format(dateTime);

    return Stack(
      children: [
        Row(
          children: [
            const Padding(padding: EdgeInsets.only(right: 10)),
            Utils.loadImageBySize(model.thumbnailImageUrl, 85, 85),
            const Padding(padding: EdgeInsets.only(right: 20)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Utils.sizeText(model.episodeTitle, 18, color: Colors.black),
                const Padding(padding: EdgeInsets.only(bottom: 7)),
                Row(
                  children: [
                    const Icon(Icons.favorite_border, size: 12),
                    Utils.sizeText(model.likeCount.toString(), 12,
                        color: Colors.black),
                    const Padding(padding: EdgeInsets.only(right: 5)),
                    Utils.sizeText(date, 12, color: Colors.grey),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 10),
                child: Utils.sizeText('#${model.episodeNo.toString()}', 16,
                    color: Colors.black),
              ),
            ),
          ],
        ),
        Container(
          alignment: Alignment.bottomCenter,
          color: Colors.grey.shade400,
          height: 0.5,
        ),
      ],
    );
  }
}
