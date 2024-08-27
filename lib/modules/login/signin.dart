import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:tok/modules/login/signup/signup.dart';
import 'package:tok/modules/welcome.dart';
// import 'package:awesome_dialog/awesome_dialog.dart';
// import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';

class SignInWidget extends StatefulWidget {
  const SignInWidget({super.key});

  @override
  State<SignInWidget> createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget> {
  final TextEditingController _emailaddress = TextEditingController();
  final TextEditingController _password = TextEditingController();
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
                padding: const EdgeInsets.only(left: 250.0, top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Blogging Platform With Content Management System",
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
                padding: const EdgeInsets.only(left: 445.0, top: 20),
                child: Row(
                  children: [
                    Text(
                      "Sign In",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 350.0, top: 10),
                child: Row(
                  children: [
                    Text(
                      "Welcome Back. We've Missed you",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Flexible(
                child: Container(
                  width: 400,
                  child: FormBuilder(
                      child: TextFormField(
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    validator: (Value) {
                      if (Value!.isEmpty) {
                        return 'This Field is Required';
                      }
                      return null;
                    },
                    controller: _emailaddress,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.5),
                        ),
                        labelText: "Enter Email"),
                    onFieldSubmitted: (value) {
                      if (value.isNotEmpty) {
                        setState(() {
                          _emailaddress;
                        });
                      }
                    },
                  )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Flexible(
                child: Container(
                  width: 400,
                  child: FormBuilder(
                      child: TextFormField(
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    validator: (Value) {
                      if (Value!.isEmpty) {
                        return 'This Field is Required';
                      }
                      return null;
                    },
                    controller: _password,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.5),
                        ),
                        labelText: "Enter Password"),
                    onFieldSubmitted: (value) {
                      if (value.isNotEmpty) {
                        setState(() {
                          _password;
                        });
                      }
                    },
                  )),
                ),
              ),

              // *********************************************
              // Forgot Password
              // *********************************************
              Padding(
                padding: const EdgeInsets.only(
                  left: 550.0,
                  top: 10,
                ),
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
              // ***************************************************************************
              // Sign In Button
              // ************************************************************************
              SizedBox(
                height: 20,
              ),
              Container(
                width: 400,
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WelcomeScreen(),
                          ));
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        // fontSize: 22,
                        color: Colors.white,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 330.0, top: 40),
                child: Row(
                  children: [
                    Text(
                      '-------------------------',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'or continue with',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      '-------------------------',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 400,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/google.jpeg'),
                              radius: 10,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Google',
                              style: TextStyle(
                                // fontSize: 22,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 330.0, top: 40),
                child: Row(
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(DialogRoute(
                              context: context,
                              builder: (context) => SignUpWidget()));
                        },
                        child: Text(
                          'Create Account',
                          style: TextStyle(color: Colors.blue),
                        )),
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
