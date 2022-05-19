import 'package:json_annotation/json_annotation.dart';
import 'package:webtoon/models/book_model.dart';
part 'recommend_model.g.dart';

@JsonSerializable()
class RecommendModel {
  String mobileImageUrl = "";
  String recommendImageUrl = "";
  int linkTitleNo = 0;
  late BookModel titleInfo;

  RecommendModel();

  factory RecommendModel.fromJson(Map<String, dynamic> json) =>
      _$RecommendModelFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendModelToJson(this);
}
