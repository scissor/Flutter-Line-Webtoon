import 'package:flutter/material.dart';
import 'package:webtoon/new/challenge_recommend.dart';
import 'package:webtoon/new/fresh_picks.dart';
import 'package:webtoon/new/weekly_hot_by_genre.dart';
import '../models/home_model.dart';
import '../utils/api_provider.dart';
import '../utils/utils.dart';

class NewsScreen extends StatelessWidget {
  final _weeklyHotbyGenre = WeeklyHotByGenre();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: apiProvider.loadHome(),
      builder: (context, AsyncSnapshot<HomeModel> snapshot) {
        if (!snapshot.hasData) {
          return const CircularProgressIndicator();
        }

        return buildAll(snapshot.data!);
      },
    );
  }

  Widget buildAll(HomeModel model) {
    _weeklyHotbyGenre.init(model.weeklyHotByGenreList);

    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        // 推薦
        const Padding(padding: EdgeInsets.only(bottom: 20)),
        buildTitle('推薦作品'),
        const Padding(padding: EdgeInsets.only(bottom: 10)),
        ChallengeRecommend(model.challengeHomeRecommendTitleList),
        const Padding(padding: EdgeInsets.only(bottom: 15)),

        // Banner
        Utils.loadImage(model.firstBanner.imageUrl, fit: BoxFit.fill),

        const Padding(padding: EdgeInsets.only(bottom: 35)),

        // 熱門
        StreamBuilder(
          stream: _weeklyHotbyGenre.Title,
          builder: (context, AsyncSnapshot<String> snapshot) {
            return snapshot.hasData
                ? buildTitle(snapshot.data!)
                : const SizedBox.shrink();
          },
        ),
        const Padding(padding: EdgeInsets.only(bottom: 10)),
        _weeklyHotbyGenre,

        buildTitle('新作推薦'),
        const Padding(padding: EdgeInsets.only(bottom: 10)),
        FreshPicks(model.freshPicksTitleList),
      ],
    );
  }

  Widget buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Utils.sizeText(title, 21),
    );
  }
}
