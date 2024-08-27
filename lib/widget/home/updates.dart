import 'package:flutter/material.dart';

class UpdatesWidget extends StatefulWidget {
  const UpdatesWidget({super.key});

  @override
  State<UpdatesWidget> createState() => _UpdatesWidgetState();
}

class _UpdatesWidgetState extends State<UpdatesWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(blurRadius: 0.5)],
            color: Theme.of(context).colorScheme.primary,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Be a part of our platform',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.blue,
                    ),
                  ),
                  child: Text(
                    "Subscribe",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold),
                  ),
                ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
