import 'package:fashion_market/modules/women/cubit/cubit.dart';
import 'package:fashion_market/modules/women/cubit/states.dart';
import 'package:fashion_market/shared/component.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class women_screen extends StatelessWidget {
  women_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => womenCubit(),
      child: BlocConsumer<womenCubit, womenStates>(
          builder: (context, state) {
            return Scaffold(
              endDrawer: My_Drawer(),
              appBar: My_AppBar(),
              body: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: items(context,
                    imageUrl:
                        'https://ng.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/13/9806531/1.jpg?7819',
                    product_title: 'شلير   kjhjh    ',
                    price: "450"),
              ),
            );
          },
          listener: (context, state) {}),
    );
  }
}
