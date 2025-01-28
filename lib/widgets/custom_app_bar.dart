import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Builder(
        builder: (context) {
          final bool isHomePage = ModalRoute.of(context)?.settings.name == '/';
          final Color iconColor = isHomePage ? Colors.white : Colors.black;
          return IconButton(
            icon: Icon(Icons.menu, color: iconColor),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        },
      ),
      title: Builder(
        builder: (context) {
          final bool isHomePage = ModalRoute.of(context)?.settings.name == '/';
          final Color textColor = isHomePage ? Colors.white : Colors.black;
          return Text(
            'Ink Master',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                ),
          );
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
