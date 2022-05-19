// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => HomeModel()
  ..challengeHomeRecommendTitleList =
      (json['challengeHomeRecommendTitleList'] as List<dynamic>)
          .map((e) => RecommendModel.fromJson(e as Map<String, dynamic>))
          .toList()
  ..weeklyHotTitleList = (json['weeklyHotTitleList'] as List<dynamic>)
      .map((e) => BookModel.fromJson(e as Map<String, dynamic>))
      .toList()
  ..firstBanner =
      BannerModel.fromJson(json['firstBanner'] as Map<String, dynamic>)
  ..weeklyHotByGenreList = (json['weeklyHotByGenreList'] as List<dynamic>)
      .map((e) => WeeklyHotByGenreModel.fromJson(e as Map<String, dynamic>))
      .toList()
  ..freshPicksTitleList = (json['freshPicksTitleList'] as List<dynamic>)
      .map((e) => BookModel.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$HomeModelToJson(HomeModel instance) => <String, dynamic>{
      'challengeHomeRecommendTitleList':
          instance.challengeHomeRecommendTitleList,
      'weeklyHotTitleList': instance.weeklyHotTitleList,
      'firstBanner': instance.firstBanner,
      'weeklyHotByGenreList': instance.weeklyHotByGenreList,
      'freshPicksTitleList': instance.freshPicksTitleList,
    };
