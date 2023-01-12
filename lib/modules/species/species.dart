import 'package:fashion_market/shared/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';

class species_screen extends StatelessWidget {
  species_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => speciesCubit(),
      child: BlocConsumer<speciesCubit, speciesStates>(
          builder: (context, state) {
            return Scaffold(
              endDrawer: My_Drawer(),
              appBar: My_AppBar(),
              body: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: items(context,
                    imageUrl:
                        'https://www.apple.com/v/iphone-14-pro/a/images/overview/hero/hero_iphone_14_pro__kzr001ge0262_large.jpg',
                    product_title: "ايفون 12 برو ماكس ",
                    price: '1250'),
              ),
            );
          },
          listener: (context, state) {}),
    );
  }
}
