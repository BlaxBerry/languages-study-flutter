import 'package:flutter/material.dart';

class FabAdd extends StatelessWidget {
  const FabAdd({super.key});

  void _onClick() async {
    // TODO:
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.green[400],
      onPressed: _onClick,
      child: const Icon(Icons.add),
    );
  }
}
