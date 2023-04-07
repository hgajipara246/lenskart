import 'package:flutter/material.dart';

class YourOrder extends StatefulWidget {
  const YourOrder({Key? key}) : super(key: key);

  @override
  State<YourOrder> createState() => _YourOrderState();
}

class _YourOrderState extends State<YourOrder> {
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(
          color: Color(0xFF3B2C26),
        ),
        title: Text(
          "Your Orders",
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
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.search_outlined,
              color: Color(0xFF3B2C26),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Container(
                height: 160,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0x1A000000),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          child: Text(
                            "Order #5678",
                            style: TextStyle(
                              fontFamily: "ProximaNova",
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color(0xFF3B2C26),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Icon(
                            Icons.keyboard_arrow_up_outlined,
                            color: Color(0xFF3B2C26),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text(
                            "Titan",
                            style: TextStyle(
                              fontFamily: "ProximaNova",
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color(0xFF3B2C26),
                            ),
                          ),
                          Spacer(),
                          RichText(
                            text: TextSpan(
                              text: "Qty:1\t\t\t\t",
                              style: TextStyle(
                                fontFamily: "ProximaNova",
                                fontWeight: FontWeight.w600,
                                fontSize: 11,
                                color: Color(0x79000000),
                              ),
                              children: [
                                TextSpan(
                                  text: "₹ 2500/-",
                                  style: TextStyle(
                                    fontFamily: "ProximaNova",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: Color(0xFF3B2C26),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: "Delivery\t",
                              style: TextStyle(
                                fontFamily: "ProximaNova",
                                fontWeight: FontWeight.w600,
                                fontSize: 11,
                                color: Color(0x79000000),
                              ),
                              children: [
                                TextSpan(
                                  text: "\tFree",
                                  style: TextStyle(
                                    fontFamily: "ProximaNova",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: Color(0xFF3B2C26),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xCFFF9700),
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Icon(
                                size: 20,
                                Icons.done_outlined,
                                color: Color(0x98FFFFFF),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Shipped",
                            style: TextStyle(
                              fontFamily: "ProximaNova",
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xCFFF9700),
                            ),
                          ),
                          Spacer(),
                          RichText(
                            text: TextSpan(
                              text: "Total\t",
                              style: TextStyle(
                                fontFamily: "ProximaNova",
                                fontWeight: FontWeight.w600,
                                fontSize: 11,
                                color: Color(0x79000000),
                              ),
                              children: [
                                TextSpan(
                                  text: "\t₹ 2500/-",
                                  style: TextStyle(
                                    fontFamily: "ProximaNova",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: Color(0xFF3B2C26),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0x1A000000),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      child: Text(
                        "Order #5678",
                        style: TextStyle(
                          fontFamily: "ProximaNova",
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color(0xFF3B2C26),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Color(0xFF3B2C26),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 160,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0x1A000000),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          child: Text(
                            "Order #5678",
                            style: TextStyle(
                              fontFamily: "ProximaNova",
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color(0xFF3B2C26),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Icon(
                            Icons.keyboard_arrow_up_outlined,
                            color: Color(0xFF3B2C26),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text(
                            "Prada",
                            style: TextStyle(
                              fontFamily: "ProximaNova",
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color(0xFF3B2C26),
                            ),
                          ),
                          Spacer(),
                          RichText(
                            text: TextSpan(
                              text: "Qty:1\t\t\t\t",
                              style: TextStyle(
                                fontFamily: "ProximaNova",
                                fontWeight: FontWeight.w600,
                                fontSize: 11,
                                color: Color(0x79000000),
                              ),
                              children: [
                                TextSpan(
                                  text: "₹ 2800/-",
                                  style: TextStyle(
                                    fontFamily: "ProximaNova",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: Color(0xFF3B2C26),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: "Delivery\t",
                              style: TextStyle(
                                fontFamily: "ProximaNova",
                                fontWeight: FontWeight.w600,
                                fontSize: 11,
                                color: Color(0x79000000),
                              ),
                              children: [
                                TextSpan(
                                  text: "\tFree",
                                  style: TextStyle(
                                    fontFamily: "ProximaNova",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: Color(0xFF3B2C26),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xCFFF9700),
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Icon(
                                size: 20,
                                Icons.done_outlined,
                                color: Color(0x98FFFFFF),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Shipped",
                            style: TextStyle(
                              fontFamily: "ProximaNova",
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xCFFF9700),
                            ),
                          ),
                          Spacer(),
                          RichText(
                            text: TextSpan(
                              text: "Total\t",
                              style: TextStyle(
                                fontFamily: "ProximaNova",
                                fontWeight: FontWeight.w600,
                                fontSize: 11,
                                color: Color(0x79000000),
                              ),
                              children: [
                                TextSpan(
                                  text: "\t₹ 2800/-",
                                  style: TextStyle(
                                    fontFamily: "ProximaNova",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: Color(0xFF3B2C26),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
