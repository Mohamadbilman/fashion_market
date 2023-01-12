import 'package:bloc/bloc.dart';
import 'package:fashion_market/modules/children/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class childrenCubit extends Cubit<childrenStates> {
  childrenCubit() : super(childreninitialState());
  static childrenCubit get(context) => BlocProvider.of(context);
}
