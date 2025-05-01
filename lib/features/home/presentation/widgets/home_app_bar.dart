/*
Author: Harun Demir
Create Date: 1.05.2025
Update Date: 1.05.2025
*/

import 'package:flutter/material.dart';

import '../../../../core/constants/string_constants.dart';
import '../../../../core/widgets/custom_app_bar.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) => const CustomAppBar(title: appName);
}
