import 'package:flutter/material.dart';
import 'package:webtoon/title/title_screen.dart';
import 'hot/hot_screen.dart';
import 'screens/mine_screen.dart';
import 'new/new_screen.dart';
import 'screens/other_screen.dart';
import 'widgets/bottom_bar.dart';

class App extends StatelessWidget {
  final bottomBar = BottomBar();
  final screens = [
    HotScreen(),
    TitleScreen(),
    NewsScreen(),
    MineScreen(),
    OtherScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    // return Utils.loadImage('/20220307_274/1646626912151KpF21_PNG/5640x136.png');
    return MaterialApp(
      title: "Webtoon",
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      home: Scaffold(
        appBar: BuildAppBar(),
        backgroundColor: const Color(0x55555555),
        body: StreamBuilder(
          stream: bottomBar.Index,
          builder: (context, AsyncSnapshot<int> snapshot) {
            if (snapshot.hasData) {
              return screens[snapshot.data!];
            }

            return const CircularProgressIndicator();
          },
        ),
        bottomNavigationBar: bottomBar,
      ),
    );
  }

  AppBar BuildAppBar() {
    return AppBar(
      leading: Container(
        padding: const EdgeInsets.only(left: 10),
        width: 50,
        child: Image.network(
            'https://i.pinimg.com/originals/ab/8d/fb/ab8dfb77fe2618943d42b7dd425e78d8.jpg'),
      ),
      backgroundColor: Colors.black,
      actions: const [
        Icon(Icons.search),
      ],
    );
  }
}
