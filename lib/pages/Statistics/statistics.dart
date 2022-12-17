import 'package:flutter/material.dart';

import '../../widgets/FloatingActionButtons/fab_add.dart';

class StatisticsPage extends StatefulWidget {
  const StatisticsPage({super.key});

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: FabAdd(),
      body: Center(child: Text('Statistics')),
    );
  }
}
