import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
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
              "START",
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
                fontSize: 20,
                color: Color(0xFF3B2C26),
              ),
            ),
          )),
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_outlined,
          color: Color(0xFF000000),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset("assets/images/frames_four.png", width: 250),
                ),
                const SizedBox(
                  height: 60,
                ),
                const Text(
                  "Cool And Tranding",
                  style: TextStyle(
                    fontFamily: "ProximaNova",
                    fontWeight: FontWeight.w600,
                    fontSize: 26,
                    color: Color(0xFF3B2C26),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Quickly search add cool frames to \n                     your cart",
                  style: TextStyle(
                    fontFamily: "ProximaNova",
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Color(0xFF3B2C26),
                  ),
                ),
                const SizedBox(
                  height: 200,
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
