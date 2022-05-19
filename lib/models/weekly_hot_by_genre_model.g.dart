// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_hot_by_genre_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeeklyHotByGenreModel _$WeeklyHotByGenreModelFromJson(
        Map<String, dynamic> json) =>
    WeeklyHotByGenreModel()
      ..colorCode = json['colorCode'] as String
      ..genreTabName = json['genreTabName'] as String
      ..challengeGenreTab = json['challengeGenreTab'] as String
      ..titleList = (json['titleList'] as List<dynamic>)
          .map((e) => BookModel.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$WeeklyHotByGenreModelToJson(
        WeeklyHotByGenreModel instance) =>
    <String, dynamic>{
      'colorCode': instance.colorCode,
      'genreTabName': instance.genreTabName,
      'challengeGenreTab': instance.challengeGenreTab,
      'titleList': instance.titleList,
    };
