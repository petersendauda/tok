import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:flutter/material.dart';
import 'package:tok/modules/welcome.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../modules/screens/discover.dart';

class DrawerWidget extends StatefulWidget {
  final Function(String)? onItemClick;

  const DrawerWidget({Key? key, this.onItemClick}) : super(key: key);
  // const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      padding: const EdgeInsets.only(top: 30),
      // width: 1000,
      child: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          ListTile(
            leading: Icon(
              Icons.home_outlined,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: Theme.of(context).colorScheme.tertiary),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WelcomeScreen(),
                  ));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.search,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            title: Text(
              'Discover',
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DiscoverScreen(),
                  ));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.notifications_none,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            title: Text('Notification'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WelcomeScreen(),
                  ));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.bookmark_border,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            title: Text('Saved'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WelcomeScreen(),
                  ));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.home_max_outlined,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            title: Text('Finya'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FinyaWidget(),
                  ));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WelcomeScreen(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
