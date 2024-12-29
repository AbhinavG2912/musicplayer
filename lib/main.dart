import 'package:flutter/material.dart';
import 'lightmode.dart';
import 'darkmode.dart';
import 'themeprovider.dart';
import 'package:provider/provider.dart';
import 'homepage.dart';


void main(){
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
  child: const MyApp(),
  ),

    
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}