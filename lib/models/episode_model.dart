import 'package:json_annotation/json_annotation.dart';

part 'episode_model.g.dart';

@JsonSerializable()
class EpisodeModel {
  late int titleNo;
  late int episodeNo;
  late int episodeSeq;
  late String episodeTitle;
  late String thumbnailImageUrl;
  late int exposureYmdt;
  late int registerYmdt;
  late int modifyYmdt;
  late int readCount;
  late int likeCount;
  late bool likeit;

  EpisodeModel();

  factory EpisodeModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodeModelFromJson(json);

  Map<String, dynamic> toJson() => _$EpisodeModelToJson(this);
}
