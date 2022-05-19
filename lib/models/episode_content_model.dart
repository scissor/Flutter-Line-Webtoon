import 'package:json_annotation/json_annotation.dart';

import 'image_model.dart';

part 'episode_content_model.g.dart';

@JsonSerializable()
class EpisodeContentModel {
  late int episodeSeq;
  late String episodeTitle;
  late String linkUrl;
  late int likeItCount;
  late bool likeIt;
  late String thumbnailImageUrl;
  late String writingAuthorName;
  late String creatorNote;
  late List<ImageModel> imageInfo;

  EpisodeContentModel();

  factory EpisodeContentModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodeContentModelFromJson(json);

  Map<String, dynamic> toJson() => _$EpisodeContentModelToJson(this);
}
