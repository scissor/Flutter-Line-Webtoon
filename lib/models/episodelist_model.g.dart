// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episodelist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpisodeListModel _$EpisodeListModelFromJson(Map<String, dynamic> json) =>
    EpisodeListModel()
      ..totalServiceEpisodeCount = json['totalServiceEpisodeCount'] as int
      ..count = json['count'] as int
      ..episode = (json['episode'] as List<dynamic>)
          .map((e) => EpisodeModel.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$EpisodeListModelToJson(EpisodeListModel instance) =>
    <String, dynamic>{
      'totalServiceEpisodeCount': instance.totalServiceEpisodeCount,
      'count': instance.count,
      'episode': instance.episode,
    };
