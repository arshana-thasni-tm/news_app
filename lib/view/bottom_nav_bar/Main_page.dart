import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import '../../controller/bottom_nav_controller.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Provider.of<BottomNavController>(context)
          .myPages[Provider.of<BottomNavController>(context).selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey),
          child: BottomNavigationBar(
              currentIndex:
              Provider.of<BottomNavController>(context).selectedIndex,
              onTap: Provider.of<BottomNavController>(context, listen: false)
                  .onItemTap,
              elevation: 2,
              backgroundColor: Colors.grey,
              selectedIconTheme: const IconThemeData(
                color: Colors.white,
                size: 30,
              ),
              unselectedIconTheme: const IconThemeData(
                size: 30,
              ),
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.black,
              showSelectedLabels: true,
              showUnselectedLabels: false,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home,color: Colors.black,),
                    label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.category,color: Colors.black,),
                    label: "Category"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search,color: Colors.black,),
                    label: "Search"),
              ]),
        ),
      ),
    );
  }
}