import 'package:json_annotation/json_annotation.dart';

part 'episode_info_model.g.dart';

@JsonSerializable()
class EpisodeInfoModel {
  late int titleNo;
  late String language;
  late String writingAuthorName;
  late String representGenre;
  late String title;
  late String synopsis;
  late String serviceStatus;
  late String thumbnail;
  late double starScoreAverage;
  late int readCount;
  late int favoriteCount;
  late int totalServiceEpisodeCount;
  late String linkUrl;
  late String genreColor;
  late int likeitCount;
  late bool ageGradeNotice;

  EpisodeInfoModel();

  factory EpisodeInfoModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodeInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$EpisodeInfoModelToJson(this);
}
