import 'package:json_annotation/json_annotation.dart';
import 'episode_model.dart';

part 'episodelist_model.g.dart';

@JsonSerializable()
class EpisodeListModel {
  late int totalServiceEpisodeCount;
  late int count;
  late List<EpisodeModel> episode;

  EpisodeListModel();

  factory EpisodeListModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodeListModelFromJson(json);

  Map<String, dynamic> toJson() => _$EpisodeListModelToJson(this);
}
