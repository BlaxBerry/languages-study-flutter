import 'package:flutter/material.dart';

class FabSearch extends StatelessWidget {
  const FabSearch({super.key});

  void _onClick() async {
    // TODO:
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: _onClick,
      child: const Icon(Icons.search),
    );
  }
}
