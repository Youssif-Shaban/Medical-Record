import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nodetrain/data/models/cars_model.dart';
import 'package:nodetrain/logic/cubit/cars_cubit.dart';
import 'package:nodetrain/presentation/caritem.dart';

class CarScrean extends StatefulWidget {
  @override
  State<CarScrean> createState() => _CarScreanState();
}

class _CarScreanState extends State<CarScrean> {
  late List<cartaCar> allCars;

  @override
  void initState() {
    super.initState();

    allCars = BlocProvider.of<CarsCubit>(context).getAllCars();
  }

  Widget buildBlocWidget() {
    return BlocBuilder<CarsCubit, CarsStates>(builder: (context, state) {
      if (state is CartaCarsLoaded) {
        allCars = (state).cars;
        return buildLoadedListWidget();
      } else {
        return showLoadingIndicator();
      }
    });
  }

  Widget showLoadingIndicator() {
    return Center(
      child: CircularProgressIndicator(
        color: Colors.blue,
      ),
    );
  }

  Widget buildLoadedListWidget() {
    return SingleChildScrollView(
      child: Container(
        color: Colors.blue,
        child: Column(
          children: [
            buildCarList(),
          ],
        ),
      ),
    );
  }

  Widget buildCarList() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
        ),
        itemCount: allCars.length,
        itemBuilder: (ctx, index) {
          return CarItem();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cars Page"),
      ),
      body: buildBlocWidget(),
    );
  }
}
