import 'dart:io';
import 'package:dio/dio.dart';
import 'package:p/Layout/carta/cubit/States.dart';
import 'package:p/models/car_model.dart';
import 'package:p/models/login_model.dart';
import 'package:p/models/vehicle_model.dart';
import 'package:p/network/remote/dio_Helper.dart';
import 'package:p/pages/Home/home.dart';
import 'package:p/pages/car/car_screen.dart';
import 'package:p/pages/fine/finePage.dart';
import 'package:p/pages/profile/profile.dart';
import 'package:p/shared/Components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartaCubit extends Cubit<CartaStates> {
  CartaCubit() : super(CartaInitialState());

  static CartaCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.money),
      label: 'Fines',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.man_2_outlined),
      label: 'Profile',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.car_crash_rounded),
      label: 'cars',
    ),
  ];

  List<Widget> screens = [
    HomeScreen(),
    FineScreen(),
    ProfileScreen(),
    CarSceen(),
  ];

  void changeBottomNavBar(index) {
    currentIndex = index;
    emit(CartaBottomNavState());
  }

  List<dynamic> fine = [];

  void getFine() {
    emit(CartaLoadingState());

    DioHelper.getData(
      url: 'https://run.mocky.io/v3/9e4a8f92-4e4a-4217-8f7b-12cbe202ace6',
    ).then((value) {
      //print(value.data['fines']);
      fine = value.data['fines'];
      print(fine[0]);

      emit(CartaGetFineSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(CartaGetFineErrorState(error.toString()));
    });
  }

  // List<dynamic> vv = [];

  // void getvv() {
  //   emit(CartaLoadingState());

  //   DioHelper.getData(
  //     url: 'http://localhost:4242/vehicles',
  //   ).then((value) {
  //     //print(value.data['fines']);
  //     vv = value.data;
  //     print(vv[0]);

  //     emit(CartaSuccessvehicleState());
  //   }).catchError((error) {
  //     print(error.toString());
  //     emit(CartaErrorvehicleState(error.toString()));
  //   });
  // }

  // late Vehicles myvehicle;

  // void getMyVehicle() {
  //   DioHelper.getData(
  //     url: 'http://localhost:4242/vehicles',
  //   ).then((value) {
  //     myvehicle = Vehicles.fromJson(value.data);
  //     print(myvehicle.license);
  //     emit(MyVehicleSuccess());
  //     print(myvehicle.model);
  //   }).catchError((error) {
  //     print(error);
  //     emit(MyVehicleError());
  //     // emit(CartaErrorCarState(error));
  //   });
  // }

  // List<dynamic> vehicle = [];

  // void getvehicle() {
  //   emit(CartaLoadingState());

  //   DioHelper.getData(
  //     url: 'http://localhost:4242/vehicles',
  //   ).then((value) {
  //     //print(value.data['fines']);
  //     vehicle = value.data;
  //     print(vehicle);

  //     emit(CartaSuccessvehicleState());
  //   }).catchError((error) {
  //     print(error.toString());
  //     emit(CartaErrorvehicleState(error.toString()));
  //   });
  // }

  // List<dynamic> cars = [];

  // void getCars() {
  //   emit(CartaLoadingState());

  //   DioHelper.getData(
  //     url: 'https://run.mocky.io/v3/9e4a8f92-4e4a-4217-8f7b-12cbe202ace6',
  //   ).then((value) {
  //     //print(value.data['fines']);
  //     fine = value.data['fines'];
  //     print(fine[0]);

  //     emit(CartaGetFineSuccessState());
  //   }).catchError((error) {
  //     print(error.toString());
  //     emit(CartaGetFineErrorState(error.toString()));
  //   });
  // }

  late CarModel carmodel;

  void getCar() {
    DioHelper.getData(
      url: 'https://student.valuxapps.com/api/categories',
    ).then((value) {
      carmodel = CarModel.fromJson(value.data);
      print(carmodel.data.currentpage);
      print(carmodel.status);
    }).catchError((error) {
      print(error);
      emit(CartaErrorCarState(error));
    });
  }

  // late loginModel usermodel;

  // void getUserData() {
  //   emit(CartaLoadingUserDataState());

  //   DioHelper.getData(
  //     url: 'https://student.valuxapps.com/api/profile',
  //     token: CartaConstants.token,
  //   ).then((value) {
  //     usermodel = loginModel.fromJson(value.data);
  //     print((usermodel.u?.user_email));
  //     emit(CartaSuccessUserDataState());
  //     //print((usermodel.status));
  //   }).catchError((error) {
  //     print(error.toString());
  //     emit(CartaErrorUserDataState(error));
  //   });
  // }

  //late File carimage;
  // var picker = ImagePicker();

  // Future<void> getcarImage() async {
  //   final pickedimage = await picker.pickImage(source: ImageSource.gallery);
  //   if (pickedimage != null) {
  //     //carimage = File(pickedimage.path);
  //     emit(CartaCarImageSuccessState());
  //   } else {
  //     print("No image selected");
  //     emit(CartaCarImageErrorState());
  //   }
  // }
}
