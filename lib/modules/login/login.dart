import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:tok/modules/login/question.dart';
import 'package:tok/modules/login/signin.dart';
import 'package:tok/modules/login/signup/signup.dart';
// import 'package:awesome_dialog/awesome_dialog.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF934A5F),
      appBar: AppBar(
        backgroundColor: Color(0xFF934A5F),
        title: Text(
          'Blogging Platform With Content Management System',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                // ******************************************
                // ******************************************

                // TOK, WITH AN ICON

                // ******************************************
                // ******************************************
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context, builder: (context) => SignUpWidget());
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(
                            color: Colors.white), // Adjust border color here
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
                    elevation:
                        MaterialStateProperty.all<double>(0), // No shadow
                    overlayColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.white.withOpacity(0.2);
                        }
                        return Color(0xFF934A5F);
                      },
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'TOK',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Icon(
                        Icons.note_alt_outlined,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                // ******************************************
                // ******************************************

                // SIGN IN

                // ******************************************
                // ******************************************
                ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => SignInWidget());
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          // fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )),
                // ******************************************
                // ******************************************

                // GET STARTED

                // ******************************************
                // ******************************************
                SizedBox(
                  width: 8,
                ),
                ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => SignUpWidget());
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                          // fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),
        ],
      ),
      // ******************************************
      // ******************************************

      // BODY STARTS

      // ******************************************
      // ******************************************
      body: Column(
        children: [
          Divider(
            color: Colors.black87,
          ),
          Row(
            children: [
              Flexible(
                  child: Padding(
                padding: const EdgeInsets.only(top: 200, left: 140),
                child: Text(
                  'Blog',
                  style: TextStyle(
                      shadows: [
                        Shadow(
                          color: Colors.black, // Choose the color of the shadow
                          blurRadius:
                              2.0, // Adjust the blur radius for the shadow effect
                          offset: Offset(2.0,
                              2.0), // Set the horizontal and vertical offset for the shadow
                        ),
                      ],
                      fontSize: 160,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ))
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Join us on a journey of discovery,',
                      style: TextStyle(
                          shadows: [
                            Shadow(
                              color: Colors
                                  .black, // Choose the color of the shadow
                              blurRadius:
                                  1.0, // Adjust the blur radius for the shadow effect
                              offset: Offset(1.0,
                                  1.0), // Set the horizontal and vertical offset for the shadow
                            ),
                          ],
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'inspiration, and meaningful dialogue.',
                      style: TextStyle(
                          shadows: [
                            Shadow(
                              color: Colors
                                  .black, // Choose the color of the shadow
                              blurRadius:
                                  1.0, // Adjust the blur radius for the shadow effect
                              offset: Offset(1.0,
                                  1.0), // Set the horizontal and vertical offset for the shadow
                            ),
                          ],
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // ******************************************
                    // ******************************************

                    // TOK, WITHOUT AN ICON

                    // ******************************************
                    // ******************************************
                    ElevatedButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) => SignUpWidget());
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 75.0),
                          child: Text(
                            'Tok',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(right: 18.0),
                      child: Flexible(
                          child: ElevatedButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => QuestionWidget(),
                                );
                              },
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        50.0), // Adjust the border radius as needed
                                  ),
                                ),
                                // backgroundColor:
                                //     MaterialStateProperty.all<Color>(
                                //         Colors.black),
                              ),
                              child: Icon(Icons.question_mark))),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
