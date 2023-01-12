import 'package:fashion_market/shared/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../layout/cubit/cubit.dart';
import '../../layout/cubit/states.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class children_screen extends StatelessWidget {
  const children_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => childrenCubit(),
      child: BlocConsumer<childrenCubit, childrenStates>(
          builder: (context, state) {
            return Scaffold(
              endDrawer: My_Drawer(),
              appBar: My_AppBar(),
              body: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: items(context,
                    imageUrl:
                        'https://cdn.mallats.com/346/Children%20Clothes.jpg',
                    product_title: 'عمر 3 / 4 / 5',
                    price: '150'),
              ),
            );
          },
          listener: (context, state) {}),
    );
  }
}
