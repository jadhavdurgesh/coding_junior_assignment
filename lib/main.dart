import 'package:coding_junior_assignment/constants/colors.dart';
import 'package:coding_junior_assignment/views/details/details_screen.dart';
import 'package:coding_junior_assignment/views/home/home_screen.dart';
import 'package:coding_junior_assignment/views/payment/payment_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: backgroundColor),
        scaffoldBackgroundColor: backgroundColor,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const DetailsScreen(),
    );
  }
}
