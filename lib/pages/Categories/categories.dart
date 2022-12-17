import 'package:flutter/material.dart';

import '../../widgets/FloatingActionButtons/fab_add.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: FabAdd(),
      body: Center(child: Text('Categories')),
    );
  }
}
