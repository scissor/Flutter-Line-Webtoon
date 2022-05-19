import 'package:json_annotation/json_annotation.dart';
part 'book_model.g.dart';

@JsonSerializable()
class BookModel {
  int titleNo = 0;
  String title = "";
  String representGenre = "";
  bool newTitle = false;
  bool hotTitle = false;
  bool ageGradeNotice = false;
  String thumbnail = "";
  double starScoreAverage = 0;
  int starScoreCount = 0;
  int readCount = 0;
  int favoriteCount = 0;
  int mana = 0;
  int rankingMana = 0;
  int likeitCount = 0;

  BookModel();

  factory BookModel.fromJson(Map<String, dynamic> json) =>
      _$BookModelFromJson(json);

  Map<String, dynamic> toJson() => _$BookModelToJson(this);
}
