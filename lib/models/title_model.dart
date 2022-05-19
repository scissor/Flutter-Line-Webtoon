import 'package:json_annotation/json_annotation.dart';
import 'book_model.dart';

part 'title_model.g.dart';

@JsonSerializable()
class TitleModel extends BookModel {
  late List<String> weekday;
  late String restTerminationStatus;

  TitleModel();

  factory TitleModel.fromJson(Map<String, dynamic> json) =>
      _$TitleModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TitleModelToJson(this);
}
