import 'package:fashion_market/modules/children/children.dart';
import 'package:fashion_market/modules/men/men.dart';
import 'package:fashion_market/modules/species/species.dart';
import 'package:fashion_market/modules/women/women.dart';
import 'package:fashion_market/shared/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

import '../layout/cubit/cubit.dart';
import '../layout/cubit/states.dart';

class department_screen extends StatelessWidget {
  const department_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FashionCubit, FashionStates>(
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
                endDrawer: My_Drawer(),
                body: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    defaultButton(context,
                        width: double.infinity,
                        color: HexColor('#5573AF'), function: () {
                      navigateTo(context, men_screen());
                    }, text: "قسم الرجالي"),
                    defaultButton(context,
                        width: double.infinity,
                        color: HexColor('#5573AF'), function: () {
                      navigateTo(context, women_screen());
                    }, text: "قسم النسائي"),
                    defaultButton(context,
                        width: double.infinity,
                        color: HexColor('#5573AF'), function: () {
                      navigateTo(context, children_screen());
                    }, text: "قسم الاطفال"),
                    defaultButton(context,
                        width: double.infinity,
                        color: HexColor('#5573AF'), function: () {
                      navigateTo(context, species_screen());
                    }, text: "منوع "),
                  ],
                )),
          );
        },
        listener: (context, state) {});
  }
}
