import 'package:blinkit_app/repository/widget/uihelper.dart';
import 'package:flutter/material.dart';

import '../cart/cart_screen.dart';
import '../category/category_screen.dart';
import '../home/home_screen.dart';
import '../print/print_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {

  int currentIndex = 0;
  List<Widget> pages=[
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    PrintScreen()
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
          bottomNavigationBar: BottomNavigationBar(items: [
            BottomNavigationBarItem(icon: UiHelper.customImage(img: 'home 1.png'),label: 'Home'),
            BottomNavigationBarItem(icon: UiHelper.customImage(img: 'shopping-bag 1.png'),label: 'Cart'),
            BottomNavigationBarItem(icon: UiHelper.customImage(img: 'category 1.png'),label: 'Category'),
            BottomNavigationBarItem(icon: UiHelper.customImage(img: 'printer 1.png'),label: 'Printer'),
          ],
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: (index){
            currentIndex=index;
            setState(() {});
            },
          ),
    );
  }
}
