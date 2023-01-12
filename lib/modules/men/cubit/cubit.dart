import 'package:bloc/bloc.dart';
import 'package:fashion_market/modules/men/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class menCubit extends Cubit<menStates> {
  menCubit() : super(meninitialState());
  static menCubit get(context) => BlocProvider.of(context);
}
