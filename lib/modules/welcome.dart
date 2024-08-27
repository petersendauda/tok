import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:tok/widget/appbar.dart';
import 'package:tok/widget/searchbar.dart';
import 'package:tok/widget/sidebar.dart';

import '../widget/home/posts.dart';
import '../widget/home/updates.dart';
import 'screens/home.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final GlobalKey<SliderDrawerState> _sliderDrawerKey =
      GlobalKey<SliderDrawerState>();
  late String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SliderDrawer(
        appBar: SliderAppBar(
            appBarColor: Theme.of(context).colorScheme.primary,
            title: AppBarWidget()),
        key: _sliderDrawerKey,
        sliderOpenSize: 179,
        slider: DrawerWidget(
          onItemClick: (title) {
            _sliderDrawerKey.currentState!.closeSlider();
            setState(() {
              this.title = title;
            });
          },
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
            ),
          ),
        ),
      ),
    );
  }
}
