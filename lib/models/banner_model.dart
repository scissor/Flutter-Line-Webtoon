import 'package:json_annotation/json_annotation.dart';
part 'banner_model.g.dart';

@JsonSerializable()
class BannerModel {
  int bannerSeq = 10504;
  String bannerContent = "";
  String linkUrl = "";
  String imageUrl = "";
  int width = 640;
  int height = 136;
  String backgroundColor = "";
  bool showNavigationBar = false;
  bool fullScreen = false;

  BannerModel();

  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);

  Map<String, dynamic> toJson() => _$BannerModelToJson(this);
}
