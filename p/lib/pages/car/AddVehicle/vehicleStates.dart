import 'package:p/models/login_model.dart';

abstract class CartaAddVehicleStates {}

class CartaAddVehicleInitialState extends CartaAddVehicleStates {}

class CartaAddVehicleLoadingState extends CartaAddVehicleStates {}

class CartaAddVehicleSuccessState extends CartaAddVehicleStates {}

class CartaAddVehicleErrorState extends CartaAddVehicleStates {
  final String error;
  CartaAddVehicleErrorState(this.error);
}

class CartaLoginPasswordState extends CartaAddVehicleStates {}
