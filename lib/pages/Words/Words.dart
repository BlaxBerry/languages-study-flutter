import 'package:flutter/material.dart';

import '../../widgets/FloatingActionButtons/fab_add.dart';
import '../../widgets/FloatingActionButtons/fab_search.dart';

class WordsPage extends StatefulWidget {
  const WordsPage({super.key});

  @override
  State<WordsPage> createState() => _WordsPageState();
}

class _WordsPageState extends State<WordsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          // 查找单词 FloatingActionButton
          FabSearch(),
          // 间隔占位
          SizedBox(height: 10),
          // 添加新单词 FloatingActionButton
          FabAdd(),
        ],
      ),
      body: const Center(
        child: Text('Words'),
      ),
    );
  }
}
