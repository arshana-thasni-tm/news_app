import 'package:flutter/material.dart';
import '../view/category_screen/category_screen.dart';
import '../view/home_screen/home_screen.dart';
import '../view/search_screen/search_screen.dart';


class BottomNavController with ChangeNotifier{

  int selectedIndex = 0;

  void onItemTap(index) {
    selectedIndex = index;
    notifyListeners();
  }

  List<Widget> myPages = [
    HomeScreen(),
    CAtegoryScreen(),
    SearchScreen()
  ];

}