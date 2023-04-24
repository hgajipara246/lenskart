import 'package:flutter/material.dart';
import 'package:lenskart/ten_Delivery_page.dart';

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
                  height: 100,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DeliveryPage(),
                      ),
                    );
                  },
                  child: Container(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
