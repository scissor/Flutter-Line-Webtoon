import 'package:flutter/material.dart';
import 'package:webtoon/episode/episode_list.dart';
import 'package:webtoon/utils/api_provider.dart';

import '../episode/episode_content.dart';

class Utils {
  static Image loadImageBySize(String url, double w, double h,
      {BoxFit fit = BoxFit.contain}) {
    return Image.network(
      imageUrl(url),
      headers: headers(),
      width: w.toDouble(),
      height: h.toDouble(),
      fit: fit,
    );
  }

  static Image loadImage(String url, {BoxFit fit = BoxFit.contain}) {
    return Image.network(
      imageUrl(url),
      headers: headers(),
      fit: fit,
    );
  }

  static String imageUrl(String url) {
    return "https://webtoon-phinf.pstatic.net$url";
  }

  static Map<String, String> headers() {
    return {
      "Referer": "http://m.webtoons.com/",
      "User-Agent":
          "Mozilla/5.0 (Linux; Android 8.1.0; Mi MIX 2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Mobile Safari/537.36",
    };
  }

  static Text sizeText(String text, double size, {Color color = Colors.white}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
      ),
    );
  }

  static void loadEpisode(BuildContext context, int titleNo) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => EpisodeList(titleNo)));
  }

  static void loadEpisodeContent(
      BuildContext context, int titleNo, int episodeNo) async {
    var model = await apiProvider.loadEpisodeContent(titleNo, episodeNo);

    Navigator.push(context,
        MaterialPageRoute(builder: (context) => EpisodeContent(model)));
  }
}
