import 'package:bloc/bloc.dart';
import 'package:fashion_market/modules/men/cubit/states.dart';
import 'package:fashion_market/modules/women/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class womenCubit extends Cubit<womenStates> {
  womenCubit() : super(womeninitialState());
  static womenCubit get(context) => BlocProvider.of(context);
}
