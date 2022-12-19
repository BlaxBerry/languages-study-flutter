import 'package:flutter/material.dart';

import '../widgets/Drawers/drawer_left.dart';
import 'my/my.dart';
import 'words/words.dart';
import 'sentences/sentences.dart';

// This widget is the root of your application.
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _changeIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Map<String, dynamic>> _pagesList = [
    {
      'pageTitle': 'My',
      'pageContent': const MyPage(),
      'icon': const Icon(Icons.person),
    },
    {
      'pageTitle': 'Words',
      'pageContent': const WordsPage(),
      'icon': const Icon(Icons.category),
    },
    {
      'pageTitle': 'Sentences',
      'pageContent': const SentencesPage(),
      'icon': const Icon(Icons.category),
    }
  ];

  List<BottomNavigationBarItem> _renderBottomNavigationBarItem() {
    return _pagesList
        .map((item) => BottomNavigationBarItem(
              icon: item['icon'],
              label: item['pageTitle'],
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        // AppBar
        appBar: AppBar(
          title: Text(_pagesList[_selectedIndex]['pageTitle']),
        ),
        // Body
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: _pagesList[_selectedIndex]['pageContent'],
        ),
        // BottomNavigationBar
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: (int currentIndex) => _changeIndex(currentIndex),
          items: _renderBottomNavigationBarItem(),
        ),
        // Left Drawer
        drawer: const DrawerLeft(),
      ),
    );
  }
}
