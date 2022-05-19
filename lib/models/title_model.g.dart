// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'title_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TitleModel _$TitleModelFromJson(Map<String, dynamic> json) => TitleModel()
  ..titleNo = json['titleNo'] as int
  ..title = json['title'] as String
  ..representGenre = json['representGenre'] as String
  ..newTitle = json['newTitle'] as bool
  ..hotTitle = json['hotTitle'] as bool
  ..ageGradeNotice = json['ageGradeNotice'] as bool
  ..thumbnail = json['thumbnail'] as String
  ..starScoreAverage = (json['starScoreAverage'] as num).toDouble()
  ..starScoreCount = json['starScoreCount'] as int
  ..readCount = json['readCount'] as int
  ..favoriteCount = json['favoriteCount'] as int
  ..mana = json['mana'] as int
  ..rankingMana = json['rankingMana'] as int
  ..likeitCount = json['likeitCount'] as int
  ..weekday =
      (json['weekday'] as List<dynamic>).map((e) => e as String).toList()
  ..restTerminationStatus = json['restTerminationStatus'] as String;

Map<String, dynamic> _$TitleModelToJson(TitleModel instance) =>
    <String, dynamic>{
      'titleNo': instance.titleNo,
      'title': instance.title,
      'representGenre': instance.representGenre,
      'newTitle': instance.newTitle,
      'hotTitle': instance.hotTitle,
      'ageGradeNotice': instance.ageGradeNotice,
      'thumbnail': instance.thumbnail,
      'starScoreAverage': instance.starScoreAverage,
      'starScoreCount': instance.starScoreCount,
      'readCount': instance.readCount,
      'favoriteCount': instance.favoriteCount,
      'mana': instance.mana,
      'rankingMana': instance.rankingMana,
      'likeitCount': instance.likeitCount,
      'weekday': instance.weekday,
      'restTerminationStatus': instance.restTerminationStatus,
    };
