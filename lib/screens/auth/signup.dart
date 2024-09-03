import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromWidth(100),
        child: Padding(
          padding: const EdgeInsets.only(left: 23),
          child: AppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop(),
              padding: const EdgeInsets.all(8),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xFF23251F)),
                shape: MaterialStateProperty.all(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                ),
                iconColor: MaterialStateProperty.all(Colors.white),
              ),
            ),
            elevation: 0,
            //title: Text('Sign Up', style: Theme.of(context).textTheme.titleMedium),
            //centerTitle: true,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Welcome to',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .fontWeight,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "Oraimo",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 24,
                          fontWeight: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .fontWeight,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Form(
                  child: Column(
                children: [],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
