import 'package:flutter/material.dart';
import 'package:oraimo/widgets/google_button.dart';
import 'package:oraimo/screens/auth/verify.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;
  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  void _toggleConfirmPasswordVisibility() {
    setState(() {
      _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
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
      body: LayoutBuilder(builder: (context, constraint) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 23, top: 20, right: 23),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraint.maxHeight,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.,
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
                      ),
                      Text(
                        "Get Wired In! Sign up and plug into a world of gadget goodness",
                        style: TextStyle(
                          color: const Color.fromRGBO(176, 176, 176, 1),
                          fontSize: 16,
                          fontWeight: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .fontWeight,
                        ),
                      )
                    ],
                  ),
                  // const SizedBox(
                  //   height: 30,
                  // ),
                  Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email Address",
                              style: TextStyle(
                                color: const Color.fromRGBO(130, 130, 130, 1),
                                fontWeight: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .fontWeight,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(
                              height: 2.0,
                            ),
                            TextFormField(
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .fontWeight,
                              ),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color.fromRGBO(9, 15, 0, 1),
                                // fillColor: Colors.white,
                                hintText: "Email email Address",
                                hintStyle: TextStyle(
                                  color: const Color.fromRGBO(79, 79, 79, 1),
                                  fontSize: 16,
                                  fontWeight: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .fontWeight,
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(46, 73, 1, 1),
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(46, 73, 1, 1),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 18),
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Password",
                              style: TextStyle(
                                color: const Color.fromRGBO(130, 130, 130, 1),
                                fontWeight: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .fontWeight,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(
                              height: 2.0,
                            ),
                            TextFormField(
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .fontWeight,
                              ),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color.fromRGBO(9, 15, 0, 1),
                                // fillColor: Colors.white,
                                hintText: "Enter password",
                                hintStyle: TextStyle(
                                  color: const Color.fromRGBO(79, 79, 79, 1),
                                  fontSize: 16,
                                  fontWeight: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .fontWeight,
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(46, 73, 1, 1),
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(46, 73, 1, 1),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 18,
                                ),
                                suffix: InkWell(
                                  onTap: _togglePasswordVisibility,
                                  child: Icon(
                                    _isPasswordVisible
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: const Color.fromRGBO(84, 84, 84, 1),
                                    size: 20,
                                  ),
                                ),
                              ),
                              obscureText: _isPasswordVisible,
                              obscuringCharacter: "*",
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Password",
                              style: TextStyle(
                                color: const Color.fromRGBO(130, 130, 130, 1),
                                fontWeight: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .fontWeight,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(
                              height: 2.0,
                            ),
                            TextFormField(
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .fontWeight,
                              ),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color.fromRGBO(9, 15, 0, 1),
                                // fillColor: Colors.white,
                                hintText: "Confirm password",
                                hintStyle: TextStyle(
                                  color: const Color.fromRGBO(79, 79, 79, 1),
                                  fontSize: 16,
                                  fontWeight: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .fontWeight,
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(46, 73, 1, 1),
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(46, 73, 1, 1),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 18,
                                ),
                                suffix: InkWell(
                                  onTap: () {
                                    _toggleConfirmPasswordVisibility();
                                  },
                                  child: Icon(
                                    _isConfirmPasswordVisible
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: const Color.fromRGBO(84, 84, 84, 1),
                                    size: 20,
                                  ),
                                ),
                                // IconButton(
                              ),
                              // keyboardType: TextInputType.visiblePassword,
                              obscureText: _isConfirmPasswordVisible,
                              obscuringCharacter: "*",
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const VerifyScreen()));
                          },
                          style: ButtonStyle(
                            alignment: Alignment.center,
                            backgroundColor: MaterialStateProperty.all(
                              Theme.of(context).primaryColor,
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                color: const Color.fromRGBO(51, 51, 51, 1),
                                fontSize: 16,
                                fontWeight: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .fontWeight,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              height: 1,
                              color: const Color.fromRGBO(130, 130, 130, 1),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "OR",
                              style: TextStyle(
                                color: const Color.fromRGBO(130, 130, 130, 1),
                                fontSize: 16,
                                fontWeight: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .fontWeight,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 1,
                              color: const Color.fromRGBO(130, 130, 130, 1),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: GoogleButton(
                          text: "Sign up with Google",
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account?",
                              style: TextStyle(
                                color: const Color.fromRGBO(50, 50, 50, 1),
                                fontSize: 16,
                                fontWeight: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .fontWeight,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  color: const Color.fromRGBO(131, 209, 0, 1),
                                  fontSize: 16,
                                  fontWeight: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .fontWeight,
                                ),
                              ),
                            ),
                          ]),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
