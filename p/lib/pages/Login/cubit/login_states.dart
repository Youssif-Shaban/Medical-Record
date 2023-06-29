import 'package:p/models/login_model.dart';

abstract class CartaLoginStates {}

class CartaLoginInitialState extends CartaLoginStates {}

class CartaLoginLoadingState extends CartaLoginStates {}

class CartaLoginSuccessState extends CartaLoginStates {
  final loginModel loginmodel;
  CartaLoginSuccessState(this.loginmodel);
}

class CartaLoginErrorState extends CartaLoginStates {
  final String error;
  CartaLoginErrorState(this.error);
}

class CartaLoginPasswordState extends CartaLoginStates {}
