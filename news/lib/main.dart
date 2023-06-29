import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news/network/remote/dioHelper.dart';
import 'package:news/newsLayout.dart';

void main() {
  dioHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //change the the appBar theme over all the application
        appBarTheme: const AppBarTheme(
            elevation: 0,
            color: Colors.white,
            // toolbarHeight: 42,
            // backwardsCompatibility: false,
            systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.white,
                statusBarBrightness: Brightness.dark),

            //app bar title over all the app
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            iconTheme: IconThemeData(
              color: Colors.teal,
            )),
        //edite the bottom navigation bar theme
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.teal),
        primarySwatch: Colors.teal,
      ),
      darkTheme: ThemeData(scaffoldBackgroundColor: Colors.black),
      themeMode: ThemeMode.light,
      home: NewsLayout(),
    );
  }
}
