import 'package:flutter/material.dart';

import '../../widgets/FloatingActionButtons/fab_add.dart';
import '../sentences/sentences_list.dart';
// import '../../widgets/FloatingActionButtons/fab_search.dart';

class SentencesPage extends StatefulWidget {
  const SentencesPage({super.key});

  @override
  State<SentencesPage> createState() => _SentencesPageState();
}

class _SentencesPageState extends State<SentencesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          // 查找单词 FloatingActionButton
          // FabSearch(),
          // // 间隔占位
          // SizedBox(height: 10),
          // 添加新单词 FloatingActionButton
          FabAdd(),
        ],
      ),
      body: const SentencesPageList(
        dataSource: _mockDate,
      ),
    );
  }
}

const List<Map<String, dynamic>> _mockDate = [
  {
    'id': '随机ID',
    'title': '文章标题',
    'update_date': '2022/12/19',
    'language': 'en',
    // even: text
    // odd: translation
    'text': [
      '原文',
      '翻译',
      '原文',
      '翻译',
    ]
  },
  {
    'id': 'FGVBHNJKLN567CGVHB',
    'title': 'Front-end web development',
    'update_date': '',
    'language': 'en',
    'text': [
      "Front-end web development is the development of the graphical user interface of a website, through the use of HTML, CSS, and JavaScript, so that users can view and interact with that website",
      '',
    ]
  },
];
