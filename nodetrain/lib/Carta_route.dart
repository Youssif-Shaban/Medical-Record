import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nodetrain/data/repository/cars_repository.dart';
import 'package:nodetrain/logic/cubit/cars_cubit.dart';
import 'package:nodetrain/presentation/cars_Screan.dart';

import 'data/web_services/car_web_services.dart';

class CartaRouter {
  late CarsRepository carsRepository;
  late CarsCubit carsCubit;

  CartaRouter() {
    carsRepository = CarsRepository(carServices());
    carsCubit = CarsCubit(carsRepository);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => carsCubit,
            child: CarScrean(),
          ),
        );
    }
  }
}
