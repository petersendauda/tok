import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Make sure this is imported
import 'package:tok/modules/login/login.dart';
import 'package:tok/widget/theme/theme_provider.dart';

void main() async {
  //WidgetsFlutterBinding.ensureInitialized();  // Required for Firebase initialization
  //await Firebase.initializeApp();  // Initialize Firebase

  runApp(
    ChangeNotifierProvider(
      create: (context) =>
          ThemeProvider(), // Corrected the provider initialization
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Login(), // Assuming Login() is a valid widget
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
