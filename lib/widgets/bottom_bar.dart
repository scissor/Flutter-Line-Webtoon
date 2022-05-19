import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rxdart/subjects.dart';

class BottomBar extends StatefulWidget {
  final _state = BottomBarState();

  Stream<int> get Index => _state.Index;

  @override
  State<StatefulWidget> createState() => _state;
}

class BottomBarState extends State<BottomBar> {
  Stream<int> get Index => _index.stream;

  final _index = BehaviorSubject<int>.seeded(0);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: '熱門推薦',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.today),
          label: '今日漫畫',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.newspaper),
          label: '投稿新星',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.my_library_add),
          label: '我的漫畫',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: '其他',
        ),
      ],
      type: BottomNavigationBarType.fixed,
      iconSize: 25,
      unselectedFontSize: 10,
      selectedFontSize: 12,
      backgroundColor: Colors.black,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      elevation: 0,
      currentIndex: _index.value,
      onTap: _onItemClick,
      showUnselectedLabels: true,
    );
  }

  @override
  void dispose() {
    _index.close();
  }

  void _onItemClick(int index) {
    setState(() {
      _index.sink.add(index);
    });
  }
}
