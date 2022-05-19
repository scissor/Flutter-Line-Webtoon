// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpisodeModel _$EpisodeModelFromJson(Map<String, dynamic> json) => EpisodeModel()
  ..titleNo = json['titleNo'] as int
  ..episodeNo = json['episodeNo'] as int
  ..episodeSeq = json['episodeSeq'] as int
  ..episodeTitle = json['episodeTitle'] as String
  ..thumbnailImageUrl = json['thumbnailImageUrl'] as String
  ..exposureYmdt = json['exposureYmdt'] as int
  ..registerYmdt = json['registerYmdt'] as int
  ..modifyYmdt = json['modifyYmdt'] as int
  ..readCount = json['readCount'] as int
  ..likeCount = json['likeCount'] as int
  ..likeit = json['likeit'] as bool;

Map<String, dynamic> _$EpisodeModelToJson(EpisodeModel instance) =>
    <String, dynamic>{
      'titleNo': instance.titleNo,
      'episodeNo': instance.episodeNo,
      'episodeSeq': instance.episodeSeq,
      'episodeTitle': instance.episodeTitle,
      'thumbnailImageUrl': instance.thumbnailImageUrl,
      'exposureYmdt': instance.exposureYmdt,
      'registerYmdt': instance.registerYmdt,
      'modifyYmdt': instance.modifyYmdt,
      'readCount': instance.readCount,
      'likeCount': instance.likeCount,
      'likeit': instance.likeit,
    };
