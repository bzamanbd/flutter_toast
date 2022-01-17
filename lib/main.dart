import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget {
  final String title='Flutter Toast';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      home:  HomeScreen(appTitle: title),
      routes: {
        '/home-screen':(_)=>  HomeScreen(appTitle: title),
      },
    );
  }
}