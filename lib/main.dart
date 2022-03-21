
import 'package:appgallery/screens/screens.dart';
import 'package:flutter/material.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Gallely',
      initialRoute: 'home',
      routes: {
        'home':( _ ) => HomeScreen(),
        'details':( _ ) => DetailsScreen()
      },
        theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
        color: Colors.indigo
        )
      ),

    );
  }
} 