import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_cart/Screens.dart/CartModel.dart';

import 'Screens.dart/welcomeScreen.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CartModel(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: SafeArea(child: WelcomeScreen()),
      debugShowCheckedModeBanner: false,
    );
  }
}
