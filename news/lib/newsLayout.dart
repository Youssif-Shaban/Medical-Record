import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/newsCubit/newsStates.dart';
import 'package:news/newsCubit/newscubit.dart';

class NewsLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => NewsCubit()..getBusiness(),
      child: BlocConsumer<NewsCubit, NewsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = NewsCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "جريدة الاهرام",
                      style: TextStyle(color: Colors.teal, fontSize: 28),
                    ),
                  ],
                ),
              ),
              actions: [
                Icon(
                  Icons.search,
                  // color: Colors.black,
                  size: 30,
                ),
                SizedBox(
                  width: 18,
                )
              ],
            ),
            body: cubit.screens[cubit.currentindex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentindex,
              onTap: (index) {
                cubit.changeBottomNavBar(index);
              },
              items: cubit.bottomItems,
            ),
          );
        },
      ),
    );
  }
}
