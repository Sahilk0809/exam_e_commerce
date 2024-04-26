import 'package:exam_e_commerce/screens/cart/cart_screen.dart';
import 'package:exam_e_commerce/screens/detail/detail_screen.dart';
import 'package:exam_e_commerce/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/cart',
      routes: {
        '/' : (context) => HomeScreen(),
        '/detail' : (context) => DetailScreen(),
        '/cart' : (context) => CartScreen(),
      },
    );
  }
}