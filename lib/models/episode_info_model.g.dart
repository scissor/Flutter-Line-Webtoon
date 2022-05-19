// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpisodeInfoModel _$EpisodeInfoModelFromJson(Map<String, dynamic> json) =>
    EpisodeInfoModel()
      ..titleNo = json['titleNo'] as int
      ..language = json['language'] as String
      ..writingAuthorName = json['writingAuthorName'] as String
      ..representGenre = json['representGenre'] as String
      ..title = json['title'] as String
      ..synopsis = json['synopsis'] as String
      ..serviceStatus = json['serviceStatus'] as String
      ..thumbnail = json['thumbnail'] as String
      ..starScoreAverage = (json['starScoreAverage'] as num).toDouble()
      ..readCount = json['readCount'] as int
      ..favoriteCount = json['favoriteCount'] as int
      ..totalServiceEpisodeCount = json['totalServiceEpisodeCount'] as int
      ..linkUrl = json['linkUrl'] as String
      ..genreColor = json['genreColor'] as String
      ..likeitCount = json['likeitCount'] as int
      ..ageGradeNotice = json['ageGradeNotice'] as bool;

Map<String, dynamic> _$EpisodeInfoModelToJson(EpisodeInfoModel instance) =>
    <String, dynamic>{
      'titleNo': instance.titleNo,
      'language': instance.language,
      'writingAuthorName': instance.writingAuthorName,
      'representGenre': instance.representGenre,
      'title': instance.title,
      'synopsis': instance.synopsis,
      'serviceStatus': instance.serviceStatus,
      'thumbnail': instance.thumbnail,
      'starScoreAverage': instance.starScoreAverage,
      'readCount': instance.readCount,
      'favoriteCount': instance.favoriteCount,
      'totalServiceEpisodeCount': instance.totalServiceEpisodeCount,
      'linkUrl': instance.linkUrl,
      'genreColor': instance.genreColor,
      'likeitCount': instance.likeitCount,
      'ageGradeNotice': instance.ageGradeNotice,
    };
