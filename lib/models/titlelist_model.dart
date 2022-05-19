import 'package:json_annotation/json_annotation.dart';
import 'title_model.dart';

part 'titlelist_model.g.dart';

@JsonSerializable()
class TitleListModel {
  late List<TitleModel> titles;
  late int count;

  TitleListModel();

  factory TitleListModel.fromJson(Map<String, dynamic> json) =>
      _$TitleListModelFromJson(json);

  Map<String, dynamic> toJson() => _$TitleListModelToJson(this);
}
