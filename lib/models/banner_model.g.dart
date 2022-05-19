// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) => BannerModel()
  ..bannerSeq = json['bannerSeq'] as int
  ..bannerContent = json['bannerContent'] as String
  ..linkUrl = json['linkUrl'] as String
  ..imageUrl = json['imageUrl'] as String
  ..width = json['width'] as int
  ..height = json['height'] as int
  ..backgroundColor = json['backgroundColor'] as String
  ..showNavigationBar = json['showNavigationBar'] as bool
  ..fullScreen = json['fullScreen'] as bool;

Map<String, dynamic> _$BannerModelToJson(BannerModel instance) =>
    <String, dynamic>{
      'bannerSeq': instance.bannerSeq,
      'bannerContent': instance.bannerContent,
      'linkUrl': instance.linkUrl,
      'imageUrl': instance.imageUrl,
      'width': instance.width,
      'height': instance.height,
      'backgroundColor': instance.backgroundColor,
      'showNavigationBar': instance.showNavigationBar,
      'fullScreen': instance.fullScreen,
    };
