import 'package:p/models/login_model.dart';
import 'package:p/network/remote/dio_Helper.dart';
import 'package:p/pages/Login/cubit/login_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p/pages/car/AddVehicle/vehicleStates.dart';

class CartaAddVehicleCubit extends Cubit<CartaAddVehicleStates> {
  CartaAddVehicleCubit() : super(CartaAddVehicleInitialState());
  static CartaAddVehicleCubit get(context) => BlocProvider.of(context);

  //late loginModel loginmodel;

  void userVehicle({
    required String email,
    required String password,
  }) {
    emit(CartaAddVehicleLoadingState());
    DioHelper.postData(
      url: 'https://student.valuxapps.com/api/login',
      data: {
        'email': email,
        'password': password,
      },
    ).then((value) {
      print(value.data);
      //loginmodel = loginModel.fromJson(value.data);
      //loginmodel = loginModel.fromJson(value.data);
      // print(loginmodel.status);
      //print(loginmodel.u?.user_nationality);

      emit(CartaAddVehicleSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(CartaAddVehicleErrorState(error.toString()));
    });
  }
}
