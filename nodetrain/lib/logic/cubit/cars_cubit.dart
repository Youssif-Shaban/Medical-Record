import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:nodetrain/data/models/cars_model.dart';
import 'package:nodetrain/data/repository/cars_repository.dart';

part 'cars_state.dart';

class CarsCubit extends Cubit<CarsStates> {
  // CarsCubit() : super(CarsInitial());

  final CarsRepository carrepository;
  List<cartaCar> mycars = [];

  CarsCubit(this.carrepository) : super(CarsInitial());

  List<cartaCar> getAllCars() {
    carrepository.getAllCars().then((cartacars) {
      emit(CartaCarsLoaded(cartacars!));
      mycars = cartacars;
    }).catchError(onError);
    return mycars;
  }
}
