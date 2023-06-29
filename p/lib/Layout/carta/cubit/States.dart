abstract class CartaStates {}

class CartaInitialState extends CartaStates {}

class CartaBottomNavState extends CartaStates {}

class CartaLoadingState extends CartaStates {}

class CartaGetFineSuccessState extends CartaStates {}

class CartaGetFineErrorState extends CartaStates {
  final String error;
  CartaGetFineErrorState(this.error);
}

class CartaLoadingUserDataState extends CartaStates {}

class CartaSuccessUserDataState extends CartaStates {}

class CartaErrorUserDataState extends CartaStates {
  final String error;
  CartaErrorUserDataState(this.error);
}

class MyVehicleSuccess extends CartaStates {}

class MyVehicleError extends CartaStates {}

class CartaSuccessCarState extends CartaStates {}

class CartaErrorCarState extends CartaStates {
  final String error;
  CartaErrorCarState(this.error);
}

class CartaSuccessvehicleState extends CartaStates {}

class CartaErrorvehicleState extends CartaStates {
  final String error;
  CartaErrorvehicleState(this.error);
}

class CartaCarImageSuccessState extends CartaStates {}

class CartaCarImageErrorState extends CartaStates {
  // final String error;
  // CartaCarImageErrorState(this.error);
}

class CartaProfileImageSuccessState extends CartaStates {}

class CartaProfileImageErrorState extends CartaStates {
  final String error;
  CartaProfileImageErrorState(this.error);
}
