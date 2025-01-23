import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Providers/registration_provider.dart';
import 'package:untitled/Providers/shop_provider.dart';
import 'package:untitled/Screens/signupscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
           ChangeNotifierProvider(create: (context) => REgistrationProvider(),),
           ChangeNotifierProvider(create: (context) => ShopProvider(),),
        ],
      child: MaterialApp(
        home: Signupscreen(),
        debugShowCheckedModeBanner: false,
      ),
    );

  }
}
