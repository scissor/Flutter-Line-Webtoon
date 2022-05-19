// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommend_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecommendModel _$RecommendModelFromJson(Map<String, dynamic> json) =>
    RecommendModel()
      ..mobileImageUrl = json['mobileImageUrl'] as String
      ..recommendImageUrl = json['recommendImageUrl'] as String
      ..linkTitleNo = json['linkTitleNo'] as int
      ..titleInfo =
          BookModel.fromJson(json['titleInfo'] as Map<String, dynamic>);

Map<String, dynamic> _$RecommendModelToJson(RecommendModel instance) =>
    <String, dynamic>{
      'mobileImageUrl': instance.mobileImageUrl,
      'recommendImageUrl': instance.recommendImageUrl,
      'linkTitleNo': instance.linkTitleNo,
      'titleInfo': instance.titleInfo,
    };
