import 'package:flutter/material.dart';
import 'package:lenskart/eight_product_page.dart';

class HomePage extends StatefulWidget {
  final String? image;
  final String? name;
  final String? price;
  const HomePage({Key? key, this.image, this.name, this.price}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool favorite = false;
  bool favorite0 = false;
  bool favorite1 = false;
  bool favorite2 = false;
  bool sell = false;
  bool cart = false;
  bool home = false;
  List images = [
    "assets/images/frames.png",
    "assets/images/frames_six.png",
    "assets/images/frames_eight.png",
    "assets/images/frames_five.png",
  ];
  List name = [
    "Titan",
    "Ray-Bon",
    "Prada",
    "Gucci",
  ];
  List price = [
    "\$ 26.0",
    "\$ 28.0",
    "\$ 27.0",
    "\$ 25.0",
  ];
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Eyes Care",
          style: TextStyle(
            fontFamily: "ProximaNova",
            fontWeight: FontWeight.w600,
            fontSize: 27,
            color: Color(0xFF3B2C26),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black12,
              ),
              child: Image.asset(
                "assets/images/profile.jpg",
                height: 45,
                width: 45,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: "Find your choice",
                  hintStyle: const TextStyle(
                    color: Color(0x38000000),
                    fontFamily: "ProximaNova",
                    height: 1.5,
                  ),
                  focusColor: const Color(0x1F000000),
                  filled: true,
                  fillColor: const Color(0x35A9A9A9),
                  suffixIcon: const Icon(
                    Icons.search_outlined,
                    size: 25,
                    color: Color(0xFF000000),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "Our Store",
                      style: TextStyle(
                        fontFamily: "ProximaNova",
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color(0xFF3B2C26),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "View More",
                      style: TextStyle(
                        fontFamily: "ProximaNova",
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color(0xFF3B2C26),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward_outlined,
                      size: 18,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductPage(),
                            ),
                          );
                        },
                        child: Container(
                          height: 200,
                          width: 165,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10,
                                offset: Offset(1, 1),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 30),
                                child: Image.asset(
                                  "assets/images/frames_six.png",
                                  width: 100,
                                ),
                              ),
                              const Text(
                                "Titan",
                                style: TextStyle(
                                  fontFamily: "ProximaNova",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Color(0xFF3B2C26),
                                ),
                              ),
                              const Text(
                                "\$ 25.0",
                                style: TextStyle(
                                  fontFamily: "ProximaNova",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Color(0xFF3B2C26),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductPage(),
                            ),
                          );
                        },
                        child: Container(
                          height: 200,
                          width: 165,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10,
                                offset: Offset(1, 1),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 30),
                                child: Image.asset(
                                  "assets/images/frames_five.png",
                                  width: 100,
                                ),
                              ),
                              const Text(
                                "Ray-Ban",
                                style: TextStyle(
                                  fontFamily: "ProximaNova",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Color(0xFF3B2C26),
                                ),
                              ),
                              const Text(
                                "\$ 28.0",
                                style: TextStyle(
                                  fontFamily: "ProximaNova",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Color(0xFF3B2C26),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductPage(),
                            ),
                          );
                        },
                        child: Container(
                          height: 200,
                          width: 165,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10,
                                offset: Offset(1, 1),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 30),
                                child: Image.asset(
                                  "assets/images/frames_eight.png",
                                  width: 100,
                                ),
                              ),
                              const Text(
                                "Prada",
                                style: TextStyle(
                                  fontFamily: "ProximaNova",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Color(0xFF3B2C26),
                                ),
                              ),
                              const Text(
                                "\$ 25.0",
                                style: TextStyle(
                                  fontFamily: "ProximaNova",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Color(0xFF3B2C26),
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "Best Season Glasses ",
                      style: TextStyle(
                        fontFamily: "ProximaNova",
                        fontWeight: FontWeight.w600,
                        fontSize: 19,
                        color: Color(0xFF3B2C26),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "View More",
                      style: TextStyle(
                        fontFamily: "ProximaNova",
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                        color: Color(0xFF3B2C26),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward_outlined,
                      size: 18,
                    ),
                  ],
                ),
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 220,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 15,
                ),
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: Image.asset(
                          images[index],
                          width: 100,
                        ),
                      ),
                      Text(
                        name[index],
                        style: const TextStyle(
                          fontFamily: "ProximaNova",
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Color(0xFF3B2C26),
                        ),
                      ),
                      Text(
                        price[index],
                        style: const TextStyle(
                          fontFamily: "ProximaNova",
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xFF3B2C26),
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
