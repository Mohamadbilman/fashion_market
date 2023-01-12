import 'package:fashion_market/layout/cubit/cubit.dart';
import 'package:fashion_market/layout/cubit/states.dart';
import 'package:fashion_market/shared/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

class Shop_layout extends StatelessWidget {
  const Shop_layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => FashionCubit(),
      child: BlocConsumer<FashionCubit, FashionStates>(
          builder: (context, state) {
            var cubit = FashionCubit.get(context);
            return Scaffold(
                endDrawer: My_Drawer(),
                appBar: My_AppBar(),
                body: cubit.screen[cubit.currentIndex],
                bottomNavigationBar: BottomNavigationBar(
                  selectedIconTheme:
                      IconThemeData(color: HexColor('#3DA8F9'), size: 30),
                  onTap: (index) {
                    cubit.changeBottom(index);
                  },
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: HexColor('#153F92'),
                  currentIndex: cubit.currentIndex,
                  selectedLabelStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  unselectedIconTheme: IconThemeData(size: 25),
                  unselectedLabelStyle:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                  unselectedItemColor: Colors.white,
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.home,
                        ),
                        label: 'الرئيسية'),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.window,
                        ),
                        label: 'الاقسام'),
                  ],
                ));
          },
          listener: (context, state) {}),
    );
  }
}
