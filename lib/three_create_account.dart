import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController profileController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 70,
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
        child: const Center(
          child: Text(
            "SIGN IN",
            style: TextStyle(
              fontFamily: "ProximaNova",
              fontWeight: FontWeight.w500,
              fontSize: 18,
              shadows: [
                Shadow(
                  color: Colors.black38,
                  blurRadius: 20,
                  offset: Offset(0.5, 0.5),
                ),
              ],
              color: Color(0xFF3B2C26),
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFFFFFFF),
        leading: const Icon(
          Icons.arrow_back_outlined,
          color: Color(0xFF000000),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    const Text(
                      "Create Account",
                      style: TextStyle(
                        fontFamily: "ProximaNova",
                        fontWeight: FontWeight.w600,
                        fontSize: 26,
                        color: Color(0xFF3B2C26),
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    TextFormField(
                      controller: profileController,
                      decoration: InputDecoration(
                        hintText: "Full Name",
                        focusColor: Colors.black38,
                        filled: true,
                        prefixIcon: const Icon(Icons.account_circle_rounded, color: Colors.grey),
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
                      height: 100,
                    ),
                    Container(
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
                              "CREATE ACCOUNT",
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
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
