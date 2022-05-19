import 'package:json_annotation/json_annotation.dart';
import 'package:webtoon/models/book_model.dart';
part 'weekly_hot_by_genre_model.g.dart';

@JsonSerializable()
class WeeklyHotByGenreModel {
  String colorCode = "";
  String genreTabName = "";
  String challengeGenreTab = "";
  late List<BookModel> titleList;

  WeeklyHotByGenreModel();

  factory WeeklyHotByGenreModel.fromJson(Map<String, dynamic> json) =>
      _$WeeklyHotByGenreModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeeklyHotByGenreModelToJson(this);
}
