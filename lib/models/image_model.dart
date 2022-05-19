import 'package:json_annotation/json_annotation.dart';
part 'image_model.g.dart';

@JsonSerializable()
class ImageModel {
  late int sortOrder;
  late int cutId;
  late String url;
  late int fileSize;
  late int width;
  late int height;

  ImageModel();

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);

  Map<String, dynamic> toJson() => _$ImageModelToJson(this);
}
