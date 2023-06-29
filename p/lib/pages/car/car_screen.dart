import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:p/Layout/carta/cubit/States.dart';
import 'package:p/Layout/carta/cubit/carta_cubit.dart';
import 'package:p/models/car_model.dart';
import 'package:p/shared/Components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarSceen extends StatelessWidget {
  const CarSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
// class CarSceen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<CartaCubit, CartaStates>(
//         listener: (context, state) {},
//         builder: (context, state) {
//           return ListView.separated(
//               itemBuilder: (context, state) =>
//                   buildCarItem(CartaCubit.get(context).carmodel),
//               separatorBuilder: (context, index) => myDivider(),
//               itemCount: 4);
//         }
//         //   return ConditionalBuilder(
//         //       condition: CartaCubit.get(context).carmodel != null,
//         //       builder: (context) =>
//         //           buildCarItem(CartaCubit.get(context).carmodel),
//         //       fallback: (context) => CircularProgressIndicator());
//         // },
//         );
//   }
// }

// Widget buildCarItem(CarModel model) => Padding(
//       padding: EdgeInsets.all(20),
//       child: Row(children: [
//         // Image(
//         //   image: NetworkImage(model.data.currentpage),
//         //   width: 80,
//         //   height: 80,
//         //   fit: BoxFit.cover,
//         // ),
//         SizedBox(
//           height: 20,
//         ),
//         Text(model.data.currentpage.toString()),
//       ]),
//     );
