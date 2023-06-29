import 'package:p/Layout/carta/carta_layout.dart';
import 'package:p/network/local/cache_helper.dart';
import 'package:p/network/remote/dio_Helper.dart';
import 'package:p/pages/Login/login.dart';
import 'package:p/shared/Components/components.dart';
import 'package:p/shared/bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:ui' show lerpDouble;

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  // await CacheHelper.init();
  // String Token;
  // CartaConstants.token = CacheHelper.getData(key: CartaConstants.accesstoken);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.teal,
          selectedItemColor: Colors.white,
        ),
      ),
      home: LoginScreen(),
    );
  }
}
