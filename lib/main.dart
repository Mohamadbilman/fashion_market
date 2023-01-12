import 'package:bloc/bloc.dart';
import 'package:fashion_market/layout/layout.dart';
import 'package:fashion_market/modules/home.dart';
import 'package:fashion_market/modules/men/men.dart';
import 'package:fashion_market/shared/bloc_observer.dart';
import 'package:flutter/material.dart';

import 'jj.dart';

void main() {
  BlocOverrides.runZoned(() {
    runApp(MyApp());
  }, blocObserver: MyBlocObserver());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Shop_layout());
  }
}
