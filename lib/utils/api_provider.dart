import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/episode_content_model.dart';
import '../models/episode_info_model.dart';
import '../models/episodelist_model.dart';
import '../models/home_model.dart';
import '../models/titlelist_model.dart';

class ApiProvider {
  late HomeModel _home;
  late TitleListModel _title;
  late EpisodeInfoModel _episodeInfo;

  HomeModel get home => _home;
  TitleListModel get title => _title;
  EpisodeInfoModel get episodeInfo => _episodeInfo;

  Future<HomeModel> loadHome() async {
    final json = await rootBundle.loadString('assets/home.json');
    _home = HomeModel.fromJson(jsonDecode(json));
    return _home;
  }

  Future<TitleListModel> loadTitle() async {
    final json = await rootBundle.loadString('assets/titlelist.json');
    _title = TitleListModel.fromJson(jsonDecode(json));
    return _title;
  }

  Future<EpisodeListModel> loadEpisodeList(int titleNo) async {
    await loadEpisodeInfo(titleNo);

    var path = 'assets/episodes/$titleNo.json';
    var defaultPath = 'assets/episodes/default_list.json';

    try {
      final json = await rootBundle.loadString(path);
      print('Episode list: $path');
      return EpisodeListModel.fromJson(jsonDecode(json));
    } catch (e) {
      final json = await rootBundle.loadString(defaultPath);
      print(e.toString());
      print(defaultPath);
      return EpisodeListModel.fromJson(jsonDecode(json));
    }
  }

  Future<EpisodeInfoModel> loadEpisodeInfo(int titleNo) async {
    var path = 'assets/episodes/info$titleNo.json';
    var defaultPath = 'assets/episodes/default_info.json';

    try {
      final json = await rootBundle.loadString(path);
      _episodeInfo = EpisodeInfoModel.fromJson(jsonDecode(json));
      print('Episode info: $path');
      return _episodeInfo;
    } catch (e) {
      final json = await rootBundle.loadString(defaultPath);
      print(e.toString());
      print(defaultPath);
      _episodeInfo = EpisodeInfoModel.fromJson(jsonDecode(json));
      return _episodeInfo;
    }
  }

  Future<EpisodeContentModel> loadEpisodeContent(
      int titleNo, int episodeNo) async {
    var path = 'assets/episodes/$titleNo$episodeNo.json';
    var defaultPath = 'assets/episodes/default_content.json';

    try {
      final json = await rootBundle.loadString(path);
      print('Episode content: $path');
      return EpisodeContentModel.fromJson(jsonDecode(json));
    } catch (e) {
      final json = await rootBundle.loadString(defaultPath);
      print(e.toString());
      print(defaultPath);
      return EpisodeContentModel.fromJson(jsonDecode(json));
    }
  }
}

final apiProvider = ApiProvider();
