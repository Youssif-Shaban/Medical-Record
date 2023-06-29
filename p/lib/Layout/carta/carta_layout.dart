import 'package:p/Layout/carta/cubit/States.dart';
import 'package:p/Layout/carta/cubit/carta_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartaLayout extends StatelessWidget {
  const CartaLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (BuildContext context) => CartaCubit()
              //..carimage
              //..getvv()
              //..getMyVehicle()
              ..getFine()
            //..getUserData(),
            ),
      ],
      child: BlocConsumer<CartaCubit, CartaStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = CartaCubit.get(context);

          return Scaffold(
            backgroundColor: Colors.white,
            // appBar: AppBar(
            //   title: Text("Carta"),
            //   backgroundColor: Colors.teal,
            //   elevation: 0,
            // ),
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: cubit.currentIndex,
                onTap: (index) {
                  cubit.changeBottomNavBar(index);
                },
                items: cubit.bottomItems),
          );
        },
      ),
    );
  }
}
