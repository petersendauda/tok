import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:tok/modules/login/signup/interest.dart';

class SignUpEmailWidget extends StatefulWidget {
  const SignUpEmailWidget({super.key});

  @override
  State<SignUpEmailWidget> createState() => _SignUpEmailWidgetState();
}

class _SignUpEmailWidgetState extends State<SignUpEmailWidget> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
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
              Padding(
                padding: const EdgeInsets.only(left: 450.0, top: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sign Up",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                        key: ValueKey('emailaddress'),
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
              // ***************************************************************************
              // Sign Up Button
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
                            builder: (context) => InterestWidget(),
                          ));
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    child: Text(
                      'Next',
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
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        '< Go Back',
                        style: TextStyle(color: Colors.grey),
                      ),
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
