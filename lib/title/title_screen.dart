import 'package:flutter/material.dart';
import 'package:webtoon/models/title_model.dart';
import 'package:webtoon/models/titlelist_model.dart';
import '../utils/api_provider.dart';
import '../utils/utils.dart';

class TitleScreen extends StatelessWidget {
  final _tabs = [
    const Tab(child: Text('週一')),
    const Tab(child: Text('週二')),
    const Tab(child: Text('週三')),
    const Tab(child: Text('週四')),
    const Tab(child: Text('週五')),
    const Tab(child: Text('週六')),
    const Tab(child: Text('週日')),
    const Tab(child: Text('每日追漫區')),
  ];

  final _weekday = [
    'MONDAY',
    'TUESDAY',
    'WEDNESDAY',
    'THURSDAY',
    'FRIDAY',
    'SATURDAY',
    'SUNDAY'
  ];

  late BuildContext _context;

  @override
  Widget build(BuildContext context) {
    _context = context;

    return FutureBuilder(
      future: apiProvider.loadTitle(),
      builder: (context, AsyncSnapshot<TitleListModel> snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        return buildContent();
      },
    );
  }

  Widget buildContent() {
    return DefaultTabController(
      length: _tabs.length,
      child: Column(
        children: [
          buildTabBar(),
          buildTabBarView(),
        ],
      ),
    );
  }

  Widget buildTabBar() {
    return TabBar(
      isScrollable: true,
      indicator: const UnderlineTabIndicator(),
      tabs: _tabs,
    );
  }

  Widget buildTabBarView() {
    var condition = (t) =>
        _weekday.every((day) => t.weekday.contains(day)) ||
        t.restTerminationStatus == 'TERMINATION';

    var titles = apiProvider.title.titles.toList();
    var dailyTitles = titles.where(condition).toList();
    titles.removeWhere(condition);

    var widgets = <Widget>[];
    for (var day in _weekday) {
      var weekdayTitles =
          titles.where((model) => model.weekday.contains(day)).toList();
      weekdayTitles.sort((a, b) => b.likeitCount.compareTo(a.likeitCount));
      widgets.add(buildByWeekday(weekdayTitles));
    }
    widgets.add(buildByWeekday(dailyTitles.toList()));

    return Expanded(
      child: TabBarView(
        children: widgets,
      ),
    );
  }

  Widget buildByWeekday(List<TitleModel> models) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Utils.sizeText('${models.length}部作品', 14,
                    color: Colors.grey),
              ),
              Container(
                padding: const EdgeInsets.only(right: 10),
                alignment: Alignment.centerRight,
                child: Utils.sizeText('依我的最愛排序', 14, color: Colors.grey),
              ),
            ],
          ),
        ),
        Flexible(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, childAspectRatio: 0.58),
            itemCount: models.length,
            itemBuilder: (context, index) {
              return buildItem(models[index]);
            },
          ),
        ),
      ],
    );
  }

  Widget buildItem(TitleModel model) {
    return InkWell(
      onTap: () => Utils.loadEpisode(_context, model.titleNo),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Utils.loadImage(model.thumbnail, fit: BoxFit.fitWidth),
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Utils.sizeText(model.representGenre, 10,
                    color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 15, right: 5),
                child: Utils.sizeText(model.title, 14),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 60, right: 5),
                child: Row(
                  children: [
                    const Icon(
                      Icons.favorite,
                      color: Colors.green,
                      size: 12,
                    ),
                    const Padding(padding: EdgeInsets.only(left: 5)),
                    Utils.sizeText(model.likeitCount.toString(), 12,
                        color: Colors.green),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
