import 'package:flutter/material.dart';
import 'package:flutter_fer_01/src/Screem/counter_funtion_screen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(primarySwatch:  Colors.red).copyWith(primary: Colors.red),
      ),
      home: const CounterFuntionScreem()
    );
  }
}