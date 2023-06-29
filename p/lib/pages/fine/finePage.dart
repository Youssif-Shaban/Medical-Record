// import 'package:conditional_builder/conditional_builder.dart';
import 'package:p/Layout/carta/cubit/States.dart';
import 'package:p/Layout/carta/cubit/carta_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import '../../shared/Components/components.dart';

class FineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartaCubit, CartaStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var fine_list = CartaCubit.get(context).fine;

        return ConditionalBuilder(
          condition: state is! CartaLoadingState,
          builder: (context) => ListView.separated(
            // physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) => buildFineItem(fine_list[index]),
            separatorBuilder: (context, index) => Divider(),
            itemCount: 2,
          ),
          fallback: (context) => Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
