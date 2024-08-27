import 'package:flutter/material.dart';
import 'package:tok/modules/login/signin.dart';
import 'package:tok/modules/login/signup/signupemail.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({super.key});

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        Container(
          width: 1000,
          height: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 400.0, top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Join Our Platform",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.close,
                          grade: 100,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 450.0, top: 20),
                child: Row(
                  children: [
                    Text(
                      "Sign Up",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 400.0, top: 50),
                child: Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(DialogRoute(
                              context: context,
                              builder: (context) => SignUpEmailWidget()));
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(
                                  color:
                                      Colors.grey), // Adjust border color here
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.transparent),
                          elevation:
                              MaterialStateProperty.all<double>(0), // No shadow
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.white.withOpacity(0.2);
                              }
                              return Colors.grey;
                            },
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.email,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Sign Up with Email',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 400.0, top: 30),
                child: Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(
                                  color:
                                      Colors.grey), // Adjust border color here
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.transparent),
                          elevation:
                              MaterialStateProperty.all<double>(0), // No shadow
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.white.withOpacity(0.2);
                              }
                              return Colors.grey;
                            },
                          ),
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/google.jpeg'),
                              radius: 10,
                            ),
                            // Image.asset(
                            //   'assets/images/google.jpeg',
                            //   height: 5,
                            //   width: 5,
                            // ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Sign Up with Google',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 390.0,
                  top: 30,
                ),
                child: Row(
                  children: [
                    Text("Already have an account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(DialogRoute(
                              context: context,
                              builder: (context) => SignInWidget()));
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 175.0, top: 100),
                child: Row(
                  children: [
                    Text('Click "Sign Up" to agree to our'),
                    // SizedBox(
                    //   width: 5,
                    // ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Terms of Service',
                          style: TextStyle(color: Colors.blue),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    Text('and acknowlege that our'),
                    // SizedBox(
                    //   width: 5,
                    // ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Privacy Policy',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    // SizedBox(
                    //   width: 5,
                    // ),
                    Text('applies to you'),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
