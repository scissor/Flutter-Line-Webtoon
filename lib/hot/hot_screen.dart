import 'package:flutter/material.dart';
import 'package:webtoon/models/home_model.dart';
import '../utils/api_provider.dart';
import '../utils/utils.dart';

class HotScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: FutureBuilder(
        future: apiProvider.loadHome(),
        builder: (context, AsyncSnapshot<HomeModel> snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          return PageView.builder(
            controller: PageController(viewportFraction: 0.8),
            itemCount: snapshot.data!.weeklyHotTitleList.length,
            itemBuilder: (context, index) =>
                loadImage(snapshot.data!.weeklyHotTitleList[index].thumbnail),
            scrollDirection: Axis.horizontal,
          );
        },
      ),
    );
  }

  Widget loadImage(String url) {
    return SizedBox(
      width: 150,
      height: 100,
      child: Container(
        padding: const EdgeInsets.only(right: 10),
        child: Utils.loadImage(url),
      ),
    );
  }
}
