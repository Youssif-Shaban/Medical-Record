import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/Components/components.dart';
import 'package:news/network/remote/dioHelper.dart';
import 'package:news/newsCubit/newsStates.dart';
import 'package:news/newsCubit/newscubit.dart';

class BusinessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return ConditionalBuilder(
          condition: state is! NewsLoadingState,
          builder: (context) => ListView.separated(
              itemBuilder: (context, index) =>
                  buildArticleItem(NewsCubit.get(context).business[index]),
              separatorBuilder: (context, index) => Spacer(),
              itemCount: 10),
          fallback: (context) => Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
