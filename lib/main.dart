import 'package:flutter/material.dart';
import 'package:flutter_application_1/counterprovider.dart';
import 'package:flutter_application_1/signuppage.dart';
import 'package:flutter_application_1/toggleprovider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Counterprovider()),
        ChangeNotifierProvider(create: (context) => Toggleprovider())
        
        ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
        debugShowCheckedModeBanner: false,
        home: SignUpPage(),
      ),
    );
  }
}
