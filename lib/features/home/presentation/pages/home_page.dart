/*
Author: Harun Demir
Create Date: 1.05.2025
Update Date: 1.05.2025
*/

import 'package:flutter/material.dart';

import '../widgets/home_app_bar.dart';
import '../widgets/home_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({required this.title, super.key});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) =>
      const Scaffold(appBar: HomeAppBar(), body: HomeBody());
}
