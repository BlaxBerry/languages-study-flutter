import 'package:flutter/material.dart';

class DrawerLeft extends StatelessWidget {
  const DrawerLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: const [
        UserAccountsDrawerHeader(
            accountName: Text('Blax Berry'),
            accountEmail: Text(''),
            currentAccountPictureSize: Size(50, 50),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Text('B'),
            ),
            decoration: BoxDecoration(
              color: Colors.grey,
              // image: DecorationImage(
              //   image: AssetImage('lib/images/2.0x/logo.png'),
              //   fit: BoxFit.cover,
              // )
            ))
      ]),
    );
  }
}
