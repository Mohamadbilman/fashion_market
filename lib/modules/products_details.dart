import 'package:fashion_market/shared/component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class products_details extends StatelessWidget {
  late String name;
  products_details({
    Key? key,
    required this.name,
  }) : super(key: key) {
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
        builder: (context, state) {
          return Scaffold(
              appBar: My_AppBar(),
              body: Center(
                child: Text('${'545'}'),
              ));
        },
        listener: (context, state) {});
  }
}
