import 'package:ewalle/homeScreen.dart';
import 'package:flutter/material.dart';
import 'AppConstants/AppColors.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: InActiveColor,
      ),
      home: HomeScreen(),
    );
  }
}