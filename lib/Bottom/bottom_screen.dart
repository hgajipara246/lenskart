import 'package:flutter/material.dart';
import 'package:lenskart/cart_page.dart';
import 'package:lenskart/notification_page.dart';
import 'package:lenskart/setting_page.dart';
import 'package:lenskart/seven_home_page.dart';
import 'package:lenskart/two_forgot_password.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({Key? key}) : super(key: key);

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  final List<Widget> widgetOptions = [
    const HomePage(),
    const NotificationPage(),
    const CartPage(),
    const SettingPage(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ForgotPassword(),
            ),
          );
          setState(() {});
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.orange,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      bottomSheet: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: BottomNavigationBar(
          elevation: 0,
          enableFeedback: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                selectedIndex == 0 ? Icons.home : Icons.home_outlined,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                selectedIndex == 1 ? Icons.notifications_sharp : Icons.notifications_none_sharp,
              ),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                selectedIndex == 2 ? Icons.shopping_cart : Icons.shopping_cart_outlined,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                selectedIndex == 3 ? Icons.settings : Icons.settings_outlined,
              ),
              label: 'Setting',
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: Color(0xFFFFA500),
          unselectedItemColor: const Color(0xff999999),
          onTap: (value) {
            setState(
              () {
                selectedIndex = value;
              },
            );
          },
        ),
      ),
      body: widgetOptions.elementAt(selectedIndex),
    );
  }
}
