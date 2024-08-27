import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
// import 'package:awesome_dialog/awesome_dialog.dart';
// import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';

class QuestionWidget extends StatefulWidget {
  const QuestionWidget({super.key});

  @override
  State<QuestionWidget> createState() => QuestionWidgetState();
}

class QuestionWidgetState extends State<QuestionWidget> {
  final TextEditingController _emailaddress = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _phonenumber = TextEditingController();
  final TextEditingController _subject = TextEditingController();

  String? _issuecategory = "";

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        Container(
          width: 1000,
          height: 700,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    Text(
                      '---------------------------------------------------------------------------------------',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'How can we assist you?',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    Text(
                      '---------------------------------------------------------------------------------------',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        FormBuilder(
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
                          controller: _name,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 0.5),
                              ),
                              labelText: "Please enter your full name"),
                          onFieldSubmitted: (value) {
                            if (value.isNotEmpty) {
                              setState(() {
                                _name;
                              });
                            }
                          },
                        )),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Email',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 5,
                        ),
                        FormBuilder(
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
                              labelText: "Please enter your email address"),
                          onFieldSubmitted: (value) {
                            if (value.isNotEmpty) {
                              setState(() {
                                _emailaddress;
                              });
                            }
                          },
                        )),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('What kind of issues are you facing',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Flexible(
                      child: FormBuilderDropdown(
                    dropdownColor: Colors.white,
                    name: 'Issue Category',
                    decoration: const InputDecoration(
                      labelText: 'Issue Category',
                      labelStyle: TextStyle(
                          // fontFamily:
                          //     'Montserrat',
                          fontSize: 14),
                      hintStyle: TextStyle(
                          // fontFamily:
                          //     'Montserrat',
                          fontSize: 14),
                      hintText: 'Please select a category',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 0.5),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 0.5),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        _issuecategory = value.toString();
                      });
                    },
                    items: [
                      DropdownMenuItem(
                        child: Text('Select'),
                      ),
                      DropdownMenuItem(
                        child: Text('Login Issues'),
                        value: "Login Issues",
                      ),
                      DropdownMenuItem(
                        child: Text('Option 2'),
                        value: "Option 2",
                      ),
                      DropdownMenuItem(
                        child: Text('Option 3'),
                        value: "Option 3",
                      ),
                    ],
                  )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Phone Number',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        FormBuilder(
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
                          controller: _phonenumber,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 0.5),
                              ),
                              prefixText: "+232",
                              prefixStyle:
                                  TextStyle(fontWeight: FontWeight.bold),
                              labelText: "Please enter your phone number"),
                          onFieldSubmitted: (value) {
                            if (value.isNotEmpty) {
                              setState(() {
                                _phonenumber;
                              });
                            }
                          },
                        )),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Description',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 5,
                        ),
                        FormBuilder(
                            child: TextFormField(
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
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
                          controller: _subject,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 0.5),
                              ),
                              labelText: "Please explain your issue"),
                          onFieldSubmitted: (value) {
                            if (value.isNotEmpty) {
                              setState(() {
                                _subject;
                              });
                            }
                          },
                        )),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Please describe the issue',
                style: TextStyle(color: Colors.red, fontSize: 15),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(
                              color: Color(
                                  0xFF6D1813)), // Adjust border color here
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
                          return Color.fromARGB(255, 193, 41, 30);
                        },
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.cancel_outlined,
                          color: Color(0xFF6D1813),
                        ),
                        Text(
                          'Cancel',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF6D1813),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 700,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF6D1813)),
                      ),
                      child: Text(
                        'Raise Issue',
                        style: TextStyle(
                          // fontSize: 22,
                          color: Colors.white,
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
