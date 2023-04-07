import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  final String? image;
  final String? name;
  final String? price;
  const ProductPage({Key? key, this.image, this.name, this.price}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  bool favorite = false;
  bool favorite0 = false;
  bool favorite1 = false;
  bool favorite2 = false;
  bool sell = false;
  bool cart = false;
  bool home = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(color: Colors.black),
        title: Text(
          "Titan",
          style: TextStyle(
            fontFamily: "ProximaNova",
            fontWeight: FontWeight.w600,
            fontSize: 24,
            color: Color(0xFF3B2C26),
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.search_outlined,
              size: 25,
              color: Color(0xFF3B2C26),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                Center(
                  child: Image.asset(
                    "assets/images/frames.png",
                    width: 280,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Titan",
                  style: TextStyle(
                    fontFamily: "ProximaNova",
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                    color: Color(0xFF3B2C26),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 35,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Color(0xB000000),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.remove,
                        color: Color(0xFF3B2C26),
                        size: 20,
                      ),
                      Text(
                        "1",
                        style: TextStyle(
                          fontFamily: "ProximaNova",
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Color(0xFF3B2C26),
                        ),
                      ),
                      Icon(
                        Icons.add,
                        color: Color(0xFF3B2C26),
                        size: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "₹ 1500/-",
                  style: TextStyle(
                    fontFamily: "ProximaNova",
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    color: Color(0xFF3B2C26),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Description",
                      style: TextStyle(
                        fontFamily: "ProximaNova",
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        color: Color(0xFF3B2C26),
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Color(0xFF3B2C26),
                      size: 18,
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xCFFF9700),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x47000000),
                        offset: Offset(1, 1),
                        blurRadius: 15,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_shopping_cart,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "ADD TO CART",
                        style: TextStyle(
                          fontFamily: "ProximaNova",
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xFFFFFFFF),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                home = home == true ? false : true;
                setState(() {});
              },
              child: Icon(
                home == true ? Icons.home_sharp : Icons.home_outlined,
                color: home == true ? const Color(0xFF3B2C26) : const Color(0xffBFBDBB),
                size: 25,
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                favorite2 = favorite2 == true ? false : true;
                setState(() {});
              },
              child: Icon(
                favorite2 == true ? Icons.notifications : Icons.notifications_none,
                color: favorite2 == true ? const Color(0xFF3B2C26) : const Color(0xffBFBDBB),
                size: 25,
              ),
            ),
            label: "",
          ),
          const BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 25,
              backgroundColor: Color(0xCFFF9700),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                sell = sell == true ? false : true;
                setState(() {});
              },
              child: Icon(
                sell == true ? Icons.shopping_cart : Icons.shopping_cart_outlined,
                color: sell == true ? const Color(0xFF3B2C26) : const Color(0xffBFBDBB),
                size: 25,
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                cart = cart == true ? false : true;
                setState(() {});
              },
              child: Icon(
                cart == true ? Icons.settings : Icons.settings_outlined,
                color: cart == true ? const Color(0xFF3B2C26) : const Color(0xffBFBDBB),
                size: 25,
              ),
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
