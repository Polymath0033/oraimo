import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to Oraimo',
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 20),
            Text('The best place to get your oraimo products',
                style: TextStyle(
                    fontSize: 20, color: Theme.of(context).primaryColor)),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
