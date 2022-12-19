import 'package:flutter/material.dart';

class SentencesPageList extends StatelessWidget {
  const SentencesPageList({super.key, required this.dataSource});

  final List dataSource;

  void _onClick(String name) {
    print(name);
  }

  List<Widget> _renderListItem() {
    return dataSource.map((item) {
      return Column(
        children: [
          ListTile(
              // leading: Icon(Icons.home),
              title: Text(
                item['title'],
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                item['text'][0],
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: const TextStyle(fontSize: 12),
              ),
              // trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => _onClick(item['id'])),
          const Divider(),
        ],
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _renderListItem(),
    );
  }
}
