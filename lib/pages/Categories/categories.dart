import 'package:flutter/material.dart';
import 'package:language_study/widgets/FloatingActionButtons/fab_search.dart';

import '../../widgets/FloatingActionButtons/fab_add.dart';
import 'categories_list.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
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
      body: const CategoriesPageList(),
    );
  }
}
