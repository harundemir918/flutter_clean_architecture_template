/*
Author: Harun Demir
Date: 24.06.2023
*/

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  const CustomAppBar({required this.title, super.key, this.actions});

  @override
  Widget build(BuildContext context) => AppBar(
    backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    elevation: 0,
    title: Text(title),
    centerTitle: true,
    actions: actions ?? const [],
  );
}
