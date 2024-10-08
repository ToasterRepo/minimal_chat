import 'package:flutter/material.dart';

class MyDrawerr extends StatelessWidget {
  const MyDrawerr({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Theme.of(context).colorScheme.surface,
        child: Column(
          children: [
            //logo
            DrawerHeader(child: Icon(Icons.message))
            //home list

            //settings list tile

            //log out tile
          ],
        ));
  }
}
