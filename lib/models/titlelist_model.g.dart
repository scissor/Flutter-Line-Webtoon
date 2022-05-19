// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'titlelist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TitleListModel _$TitleListModelFromJson(Map<String, dynamic> json) =>
    TitleListModel()
      ..titles = (json['titles'] as List<dynamic>)
          .map((e) => TitleModel.fromJson(e as Map<String, dynamic>))
          .toList()
      ..count = json['count'] as int;

Map<String, dynamic> _$TitleListModelToJson(TitleListModel instance) =>
    <String, dynamic>{
      'titles': instance.titles,
      'count': instance.count,
    };
