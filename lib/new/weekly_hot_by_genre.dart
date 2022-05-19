import 'package:flutter/material.dart';
import 'package:rxdart/subjects.dart';
import 'package:webtoon/models/weekly_hot_by_genre_model.dart';
import 'package:webtoon/utils/utils.dart';

class WeeklyHotByGenre extends StatefulWidget {
  late WeeklyHotByGenreState _state;
  Stream<String> get Title => _state.Title;

  init(List<WeeklyHotByGenreModel> models) {
    _state = WeeklyHotByGenreState(models);
  }

  @override
  State<StatefulWidget> createState() => _state;
}

class WeeklyHotByGenreState extends State<WeeklyHotByGenre> {
  final List<WeeklyHotByGenreModel> _models;

  Stream<String> get Title => _title.stream;
  final _title = BehaviorSubject<String>.seeded('熱門作品');
  late final BuildContext _context;

  WeeklyHotByGenreState(this._models);

  @override
  Widget build(BuildContext context) {
    _context = context;

    if (_models.isEmpty) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      height: 320,
      child: PageView.builder(
        controller: PageController(viewportFraction: 0.8),
        itemCount: _models.length,
        itemBuilder: (context, index) => buildContent(_models[index]),
        scrollDirection: Axis.horizontal,
        onPageChanged: (index) => {
          _title.sink.add(index == 0 ? '熱門作品' : _models[index].genreTabName)
        },
      ),
    );
  }

  Widget buildContent(WeeklyHotByGenreModel model) {
    var widgets = <Widget>[];
    var index = 1;
    for (var book in model.titleList) {
      widgets.add(
        InkWell(
          onTap: () => Utils.loadEpisode(_context, book.titleNo),
          child: Row(
            children: [
              rankWidget(index),
              const Padding(padding: EdgeInsets.only(right: 10)),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  width: 45,
                  height: 45,
                  child: Utils.loadImage(book.thumbnail),
                ),
              ),
              const Padding(padding: EdgeInsets.only(right: 10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Utils.sizeText(book.title, 16),
                  Utils.sizeText(book.representGenre, 10, color: Colors.grey),
                ],
              ),
            ],
          ),
        ),
      );

      widgets.add(const Padding(padding: EdgeInsets.only(bottom: 12)));

      index++;
    }

    return Column(children: widgets);
  }

  Widget rankWidget(int rank) {
    if (rank > 0) {
      return Utils.sizeText(rank.toString(), 16);
    }

    return Stack(
      alignment: Alignment.center,
      children: [
        const Icon(
          Icons.star,
          color: Colors.green,
          size: 40,
        ),
        Utils.sizeText(rank.toString(), 16),
      ],
    );
  }
}
