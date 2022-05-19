import 'package:json_annotation/json_annotation.dart';
import 'package:webtoon/models/banner_model.dart';
import 'package:webtoon/models/recommend_model.dart';
import 'package:webtoon/models/weekly_hot_by_genre_model.dart';
import 'book_model.dart';
part 'home_model.g.dart';

@JsonSerializable()
class HomeModel {
  late List<RecommendModel> challengeHomeRecommendTitleList;
  late List<BookModel> weeklyHotTitleList;
  late BannerModel firstBanner;
  late List<WeeklyHotByGenreModel> weeklyHotByGenreList;
  late List<BookModel> freshPicksTitleList;

  HomeModel();

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeModelToJson(this);
}
