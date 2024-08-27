import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:provider/provider.dart';
import 'package:tok/widget/sidebar.dart';

import 'searchbar.dart';
import 'theme/theme_provider.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        children: [
          Text(
            "Blogging Platform With Content Management System",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 100,
          ),
          SearchBarWidget(),
          SizedBox(
            width: 200,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          SizedBox(
            width: 20,
          ),
          IconButton(
              onPressed: () {
                Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme();
              },
              icon: Icon(Icons.dark_mode_outlined)),
          SizedBox(
            width: 20,
          ),
          ElevatedButton(
              onPressed: () {},
              child: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.primary,
                child: Image.asset('assets/images/profile.jpeg'),
              )),
        ],
      ),
    );
  }
}
