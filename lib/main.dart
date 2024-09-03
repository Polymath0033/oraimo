import 'package:flutter/material.dart';
import 'package:oraimo/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oraimo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          primaryColor: const Color.fromRGBO(144, 230, 0, 1),
          scaffoldBackgroundColor: Colors.black,
          useMaterial3: true,
          fontFamily: "Fellix",
          textTheme: const TextTheme(
            displayLarge: TextStyle(fontWeight: FontWeight.w800),
            displayMedium: TextStyle(fontWeight: FontWeight.w700),
            displaySmall: TextStyle(fontWeight: FontWeight.w600),
            headlineMedium: TextStyle(fontWeight: FontWeight.w500),
            headlineSmall: TextStyle(fontWeight: FontWeight.w400),
            titleLarge: TextStyle(fontWeight: FontWeight.w300),
            titleMedium: TextStyle(fontWeight: FontWeight.w500),
            titleSmall: TextStyle(fontWeight: FontWeight.w400),
            bodyLarge: TextStyle(fontWeight: FontWeight.w400),
            bodyMedium: TextStyle(fontWeight: FontWeight.w300),
            labelLarge: TextStyle(fontWeight: FontWeight.w500),
            bodySmall: TextStyle(fontWeight: FontWeight.w300),
            labelSmall: TextStyle(fontWeight: FontWeight.w300),
          )),
      home: const SplashScreen(),
    );
  }
}
