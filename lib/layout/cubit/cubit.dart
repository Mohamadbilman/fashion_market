import 'package:bloc/bloc.dart';
import 'package:fashion_market/layout/cubit/states.dart';
import 'package:fashion_market/modules/children/children.dart';
import 'package:fashion_market/modules/home.dart';
import 'package:fashion_market/modules/department.dart';
import 'package:fashion_market/modules/women/women.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FashionCubit extends Cubit<FashionStates> {
  FashionCubit() : super(FashionInitialState());
  static FashionCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> screen = [
    home_screen(),
    department_screen(),
  ];
  void changeBottom(int index) {
    currentIndex = index;
    emit(ShopChangeBottomNavState());
  }
}
