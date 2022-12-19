import 'package:flutter/material.dart';

class DrawerLeft extends StatelessWidget {
  const DrawerLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        const UserAccountsDrawerHeader(
            accountName: Text('Michael Jackson'),
            accountEmail: Text('xxxxxxxxxx@xx.com'),
            currentAccountPictureSize: Size(60, 60),
            currentAccountPicture: CircleAvatar(
                child: Text('MJ',
                    style: TextStyle(color: Colors.white, fontSize: 25))),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQckxPqMZrmiBBKAOyEyoBt7cYMLixu4uSp5Mi51YNUhYb3RbcOLXiQxA4vimkVvBEMrA&usqp=CAU'),
              fit: BoxFit.cover,
            ))),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                ListTile(
                    title: const Text('Collections'),
                    leading: const Icon(Icons.collections_outlined),
                    onTap: () {}),
                ListTile(
                    title: const Text('History'),
                    leading: const Icon(Icons.history),
                    onTap: () {}),
                ListTile(
                    title: const Text('Item'),
                    leading: const Icon(Icons.donut_small_outlined),
                    onTap: () {}),
                ListTile(
                    title: const Text('Logout'),
                    leading: const Icon(Icons.logout),
                    onTap: () {})
              ],
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 40),
            child: Column(
              children: [
                GestureDetector(
                    child: const Text(
                      'About This Project',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.blue),
                    ),
                    onTap: () => print('LogoOut'))
              ],
            )),
      ]),
    );
  }
}
