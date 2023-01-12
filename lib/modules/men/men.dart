import 'package:fashion_market/modules/men/cubit/cubit.dart';
import 'package:fashion_market/modules/men/cubit/states.dart';
import 'package:fashion_market/shared/component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class men_screen extends StatelessWidget {
  const men_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => menCubit(),
      child: BlocConsumer<menCubit, menStates>(
          builder: (context, state) {
            return Scaffold(
              backgroundColor: Colors.grey[300],
              endDrawer: My_Drawer(),
              appBar: My_AppBar(),
              body: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: items(context,
                    imageUrl:
                        "https://manofmany.com/wp-content/uploads/2021/07/Best-Australian-Stores-Australia-1067x800.jpg",
                    product_title: 'كنزة اديداس',
                    price: "350"),
              ),
            );
          },
          listener: (context, state) {}),
    );
  }
}
