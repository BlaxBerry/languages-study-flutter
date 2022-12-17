import 'package:flutter/material.dart';

import '../widgets/Drawers/drawer_left.dart';
import './Statistics/statistics.dart';
import './Categories/categories.dart';
import './Mypage/mypage.dart';

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

  static final List<String> _pagesTitles = [
    'Statistics',
    'Categories',
    'MyPage'
  ];

  static final List<Widget> _pagesContents = [
    const StatisticsPage(),
    const CategoriesPage(),
    const MyPage(),
  ];

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
          title: Text(_pagesTitles[_selectedIndex]),
        ),
        // Body
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: _pagesContents[_selectedIndex],
        ),
        // BottomNavigationBar
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: (int currentIndex) => _changeIndex(currentIndex),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.donut_small_rounded),
              label: 'Statistics',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'MyPage',
            ),
          ],
        ),
        // Left Drawer
        drawer: const DrawerLeft(),
      ),
    );
  }
}
