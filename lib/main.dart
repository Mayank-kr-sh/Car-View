import 'package:car_view/screens/auth/login_screen.dart';
import 'package:car_view/screens/product_creation/product_creation_screen.dart';
import 'package:car_view/screens/product_detail/product_detail_screen.dart';
import 'package:car_view/screens/product_list/product_list_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn = false;

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Management',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      home: isLoggedIn ? const ProductListScreen() : const LoginScreen(),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/product_list': (context) => const ProductListScreen(),
        '/product_creation': (context) => ProductCreationScreen(),
        '/product_detail': (context) => const ProductDetailScreen(),
      },
    );
  }
}
