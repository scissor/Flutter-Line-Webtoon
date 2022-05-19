// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_content_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpisodeContentModel _$EpisodeContentModelFromJson(Map<String, dynamic> json) =>
    EpisodeContentModel()
      ..episodeSeq = json['episodeSeq'] as int
      ..episodeTitle = json['episodeTitle'] as String
      ..linkUrl = json['linkUrl'] as String
      ..likeItCount = json['likeItCount'] as int
      ..likeIt = json['likeIt'] as bool
      ..thumbnailImageUrl = json['thumbnailImageUrl'] as String
      ..writingAuthorName = json['writingAuthorName'] as String
      ..creatorNote = json['creatorNote'] as String
      ..imageInfo = (json['imageInfo'] as List<dynamic>)
          .map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$EpisodeContentModelToJson(
        EpisodeContentModel instance) =>
    <String, dynamic>{
      'episodeSeq': instance.episodeSeq,
      'episodeTitle': instance.episodeTitle,
      'linkUrl': instance.linkUrl,
      'likeItCount': instance.likeItCount,
      'likeIt': instance.likeIt,
      'thumbnailImageUrl': instance.thumbnailImageUrl,
      'writingAuthorName': instance.writingAuthorName,
      'creatorNote': instance.creatorNote,
      'imageInfo': instance.imageInfo,
    };
