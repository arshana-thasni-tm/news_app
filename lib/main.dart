import 'package:flutter/material.dart';
import 'package:news_app/view/bottom_nav_bar/Main_page.dart';
import 'package:news_app/view/splashScreen.dart';
import 'package:provider/provider.dart';
import 'controller/bottom_nav_controller.dart';
import 'controller/category_controller.dart';
import 'controller/home_screen_controller.dart';
import 'controller/search_screen_controller.dart';
import 'controller/splash_controller.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => SplashScreenProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => HomeScreenController(),
          ),
          ChangeNotifierProvider(
            create: (context) => SearchScreenController(),
          ),
          ChangeNotifierProvider(
            create: (context) => BottomNavController(),
          ),
          ChangeNotifierProvider(
            create: (context) => CategoryController(),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Consumer<SplashScreenProvider>(
            builder: (context, splashScreenProvider, widget) {
              return splashScreenProvider.isLoading
                  ? SplashScreen()
                  : MainPage(); // Replace with your home screen
            },
          ),
        ));
  }
}