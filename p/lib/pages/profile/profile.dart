import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:p/Layout/carta/cubit/States.dart';
import 'package:p/Layout/carta/cubit/carta_cubit.dart';
import 'package:p/models/car_model.dart';
import 'package:p/pages/Login/cubit/login_cubit.dart';
import 'package:p/pages/Login/cubit/login_states.dart';
import 'package:p/shared/Components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/login_model.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    late loginModel usermodel;

    return BlocConsumer<CartaLoginCubit, CartaLoginStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return ListView.separated(
              itemBuilder: (context, state) =>
                  buildCarItem(CartaLoginCubit.get(context).loginmodel),
              separatorBuilder: (context, index) => myDivider(),
              itemCount: 4);
        }
        //   return ConditionalBuilder(
        //       condition: CartaCubit.get(context).carmodel != null,
        //       builder: (context) =>
        //           buildCarItem(CartaCubit.get(context).carmodel),
        //       fallback: (context) => CircularProgressIndicator());
        // },
        );
  }
}

Widget buildCarItem(loginModel model) => Padding(
      padding: EdgeInsets.all(20),
      child: Row(children: [
        SizedBox(
          height: 20,
        ),
        Text(model.u!.user_email),
        SizedBox(
          height: 20,
        ),
        Text(model.u!.user_address),
        SizedBox(
          height: 20,
        ),
        Text(model.u!.user_job),
        SizedBox(
          height: 20,
        ),
        Text(model.u!.user_phone),
        SizedBox(
          height: 20,
        ),
        Text(model.u!.manufacturer_number),
      ]),
    );
