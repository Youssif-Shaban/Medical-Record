import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/Pages/Business.dart';
import 'package:news/Pages/Settings.dart';
import 'package:news/Pages/Sports.dart';
import 'package:news/network/remote/dioHelper.dart';
import 'package:news/newsCubit/newsStates.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() : super(NewsInitialState());

  static NewsCubit get(context) => BlocProvider.of(context);

  int currentindex = 0;

  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
        icon: Icon(Icons.business_center_rounded), label: "Bussiness"),
    BottomNavigationBarItem(icon: Icon(Icons.sports), label: "Sports"),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
  ];

  List<Widget> screens = [
    BusinessScreen(),
    SportsScreen(),
    SettingsScreen(),
  ];

  void changeBottomNavBar(int index) {
    currentindex = index;
    emit(NewsBottomNavState());
  }

  List<dynamic> business = [];

  void getBusiness() {
    emit(NewsLoadingState());
    dioHelper.getData(
      url: 'V2/top-headlines',
      query: {
        'country': 'eg',
        'category': 'business',
        'apiKey': '65f7f556ec76449fa7dc7c0069f040ca',
      },
    ).then((value) {
      print(value.data.toString());
      business = value.data['articles'];
      print(business[0]['title']);
      emit(NewsGetBusinessSuccessState());
    }).catchError((error) {
      print(error.toString());
    });
  }
}
