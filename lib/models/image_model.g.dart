// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) => ImageModel()
  ..sortOrder = json['sortOrder'] as int
  ..cutId = json['cutId'] as int
  ..url = json['url'] as String
  ..fileSize = json['fileSize'] as int
  ..width = json['width'] as int
  ..height = json['height'] as int;

Map<String, dynamic> _$ImageModelToJson(ImageModel instance) =>
    <String, dynamic>{
      'sortOrder': instance.sortOrder,
      'cutId': instance.cutId,
      'url': instance.url,
      'fileSize': instance.fileSize,
      'width': instance.width,
      'height': instance.height,
    };
