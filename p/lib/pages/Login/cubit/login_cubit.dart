import 'package:p/models/login_model.dart';
import 'package:p/network/remote/dio_Helper.dart';
import 'package:p/pages/Login/cubit/login_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartaLoginCubit extends Cubit<CartaLoginStates> {
  CartaLoginCubit() : super(CartaLoginInitialState());
  static CartaLoginCubit get(context) => BlocProvider.of(context);

  late loginModel loginmodel;

  void userLogin({
    required String email,
    required String password,
  }) {
    emit(CartaLoginLoadingState());
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

      emit(CartaLoginSuccessState(loginmodel));
    }).catchError((error) {
      print(error.toString());
      emit(CartaLoginErrorState(error.toString()));
    });
  }

  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;
  void changePasswordVisiibility() {
    isPassword = !isPassword;
    suffix =
        isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(CartaLoginPasswordState());
  }
}
