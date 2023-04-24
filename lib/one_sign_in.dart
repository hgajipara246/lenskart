import 'package:flutter/material.dart';
import 'package:lenskart/Bottom/bottom_screen.dart';
import 'package:lenskart/extensions/extension.dart';
import 'package:lenskart/three_create_account.dart';
import 'package:lenskart/two_forgot_password.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool password = true;

  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreateAccount()));
    return Scaffold(
      bottomNavigationBar: Container(
        height: 70,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              offset: Offset(1, 1),
              blurRadius: 10,
            ),
          ],
        ),
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CreateAccount(),
                ),
              );
            },
            child: Text(
              "CREATE ACCOUNT",
              style: TextStyle(
                fontFamily: "ProximaNova",
                shadows: [
                  Shadow(
                    color: Colors.black38,
                    blurRadius: 20,
                    offset: Offset(0.5, 0.5),
                  ),
                ],
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color(0xFF3B2C26),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        fontFamily: "ProximaNova",
                        fontWeight: FontWeight.w600,
                        fontSize: 26,
                        color: Color(0xFF3B2C26),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 130,
                  ),
                  TextFormField(
                    validator: (value) => value!.isValidEmail() ? null : "Please Enter Correct E-mail",
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Email",
                      focusColor: Colors.black38,
                      filled: true,
                      prefixIcon: const Icon(Icons.email, color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.yellow),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                      fillColor: const Color(0x35A9A9A9),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (value) => value!.isValidPassword() ? null : "Please Enter Correct Password",
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: "Password",
                      focusColor: Colors.black38,
                      filled: true,
                      prefixIcon: const Icon(Icons.lock, color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.yellow),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                      fillColor: const Color(0x35A9A9A9),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotPassword(),
                          ),
                        );
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Color(0xCCA9A9A9),
                          fontWeight: FontWeight.w600,
                          fontFamily: "ProximaNova",
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 130,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomScreen(),
                        ),
                      );
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xCFFF9700),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black38,
                            offset: Offset(1, 1),
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.arrow_forward_outlined,
                              size: 15,
                              color: Color(0xFFFFFFFF),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "SIGN IN",
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w600,
                                fontFamily: "ProximaNova",
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
