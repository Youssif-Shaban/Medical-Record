import 'package:nodetrain/data/models/cars_model.dart';
import 'package:nodetrain/data/web_services/car_web_services.dart';

class CarsRepository {
  final carServices carservice;
  CarsRepository(this.carservice);

  Future<List<cartaCar>?> getAllCars() async {
    final cartacars = await carservice.getAllCars();
    return cartacars?.map((caritem) => cartaCar.fromJson(caritem)).toList();
  }
}
