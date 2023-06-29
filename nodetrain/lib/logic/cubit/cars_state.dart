part of 'cars_cubit.dart';

@immutable
abstract class CarsStates {}

class CarsInitial extends CarsStates {}

class CartaCarsLoaded extends CarsStates {
  final List<cartaCar> cars;
  CartaCarsLoaded(this.cars);
}
