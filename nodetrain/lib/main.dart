import 'package:flutter/material.dart';

import 'Carta_route.dart';

void main() {
  runApp(CarApp(
    cartaRouter: CartaRouter(),
  ));
  //runApp(CarApp(appRouter:AppRouter()));
}

class CarApp extends StatelessWidget {
  final CartaRouter cartaRouter;

  const CarApp({super.key, required this.cartaRouter});

  // const CarApp(Key? key,required this.appRouter):super(key:key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: cartaRouter.generateRoute,
    );
  }
}
