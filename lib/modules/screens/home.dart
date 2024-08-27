import 'package:flutter/material.dart';
import 'package:tok/widget/sidebar.dart';
import 'package:tok/widget/home/updates.dart';

import '../../widget/home/posts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PostWidget(),
            SizedBox(
              width: 400,
            ),
            UpdatesWidget()
          ],
        ),
      ],
    );
  }
}
