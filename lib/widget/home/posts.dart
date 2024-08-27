import 'package:flutter/material.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({super.key});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                    ), // Adjust border color here
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                elevation: MaterialStateProperty.all<double>(0), // No shadow
                overlayColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Theme.of(context).colorScheme.primary;
                    }
                    return Theme.of(context).colorScheme.primary;
                  },
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        child: Image.asset(
                          'assets/images/profile.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text("Sahr~Dauda",
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.tertiary,
                              ))),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 120,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            image: DecorationImage(
                                image: AssetImage("assets/images/tok.jpeg"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Take A Deep Dive On Tok Application And Its Distinctive Qualities",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Theme.of(context).colorScheme.tertiary),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Know More About Tok App",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: Theme.of(context).colorScheme.tertiary),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text("500",
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.local_fire_department_outlined,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.message_outlined,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.bookmark_add_outlined,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                  )),
                              Text(
                                "2 Weeks Ago",
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )),
        Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                    ), // Adjust border color here
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                elevation: MaterialStateProperty.all<double>(0), // No shadow
                overlayColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Theme.of(context).colorScheme.primary;
                    }
                    return Theme.of(context).colorScheme.primary;
                  },
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        child: Image.asset(
                          'assets/images/profile.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text("Sahr~Dauda",
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.tertiary,
                              )))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 120,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            image: DecorationImage(
                                image: AssetImage("assets/images/tok.jpeg"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Take A Deep Dive On Tok Application And Its Distinctive Qualities",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Theme.of(context).colorScheme.tertiary),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Know More About Tok App",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: Theme.of(context).colorScheme.tertiary),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text("500",
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.local_fire_department_outlined,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.message_outlined,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.bookmark_add_outlined,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                  )),
                              Text(
                                "2 Weeks Ago",
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )),
        Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                    ), // Adjust border color here
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                elevation: MaterialStateProperty.all<double>(0), // No shadow
                overlayColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Theme.of(context).colorScheme.primary;
                    }
                    return Theme.of(context).colorScheme.primary;
                  },
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        child: Image.asset(
                          'assets/images/profile.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text("Sahr~Dauda",
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.tertiary,
                              )))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 120,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            image: DecorationImage(
                                image: AssetImage("assets/images/tok.jpeg"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Take A Deep Dive On Tok Application And Its Distinctive Qualities",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Theme.of(context).colorScheme.tertiary),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Know More About Tok App",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: Theme.of(context).colorScheme.tertiary),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text("500",
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.local_fire_department_outlined,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.message_outlined,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.bookmark_add_outlined,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                  )),
                              Text(
                                "2 Weeks Ago",
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )),
        Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                    ), // Adjust border color here
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                elevation: MaterialStateProperty.all<double>(0), // No shadow
                overlayColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Theme.of(context).colorScheme.primary;
                    }
                    return Theme.of(context).colorScheme.primary;
                  },
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        child: Image.asset(
                          'assets/images/profile.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text("Sahr~Dauda",
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.tertiary,
                              )))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 120,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            image: DecorationImage(
                                image: AssetImage("assets/images/tok.jpeg"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Take A Deep Dive On Tok Application And Its Distinctive Qualities",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Theme.of(context).colorScheme.tertiary),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Know More About Tok App",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: Theme.of(context).colorScheme.tertiary),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text("500",
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.local_fire_department_outlined,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.message_outlined,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.bookmark_add_outlined,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                  )),
                              Text(
                                "2 Weeks Ago",
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
